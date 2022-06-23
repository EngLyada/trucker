package com.example.p_trucker;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.gms.vision.barcode.Barcode;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import info.androidhive.barcode.BarcodeReader;

public class ScanActivity extends AppCompatActivity implements BarcodeReader.BarcodeReaderListener {

    BarcodeReader barcodeReader;
    public static String code="";
    ProgressDialog pDialog;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_scan);
//        Intent intent = new Intent(ScanActivity.this, CheckActivity.class);
//        //intent.putExtra("code", barcode.displayValue);
//        startActivity(intent);
//        // get the barcode reader instance
        barcodeReader = (BarcodeReader) getSupportFragmentManager().findFragmentById(R.id.barcode_scanner);
    }

    @Override
    public void onScanned(Barcode barcode) {

        // playing barcode reader beep sound
        barcodeReader.playBeep();
        code=barcode.displayValue;
        // ticket details activity by passing barcode
        Intent intent = new Intent(ScanActivity.this, CheckActivity.class);
       // intent.putExtra("code", barcode.displayValue);
        startActivity(intent);
        //validate();
    }

    private void validate() {
        final AlertDialog.Builder popDialog = new AlertDialog.Builder(this);
        final LayoutInflater inflater = (LayoutInflater) this.getSystemService(LAYOUT_INFLATER_SERVICE);

        String login_url="https://lysmultd.com/trucker/check.php";
        pDialog = ProgressDialog.show(ScanActivity.this, "Validating...",
                "Please wait", true);
        pDialog.show();
        final StringRequest stringRequest = new StringRequest(Request.Method.POST,login_url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        Log.e("anyText",response);
                        try{
                            JSONObject jsonObject = new JSONObject(response);
                            String success = jsonObject.getString("success");
                            String message = jsonObject.getString("message");
                            //   String id= jsonObject.getString("id");

                            if(success.equals("1")){
                                pDialog.dismiss();
//                                Toast.makeText(getApplicationContext(),"Perfect",Toast.LENGTH_LONG).show();
//
//
//                                tv.setText("");
//                                name.setText("Product Name: "+ jsonObject.getString("name"));
//                                ref.setText("Product Name: "+ jsonObject.getString("name"));
                                popDialog.setTitle("Perfect|| VALID ITEM");

                                popDialog.setMessage("Product Name: "+ jsonObject.getString("name")+"  "+"Truck Number Plate: "+ jsonObject.getString("ref")+" "+"Product Weight: "+ jsonObject.getString("qty"));
                                popDialog.setPositiveButton("Scan More", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
//                                        Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
//                                        startActivity(intent);

                                    }


                                });
                                popDialog.setNegativeButton("Finish", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        Intent intent = new Intent(ScanActivity.this, MainActivity.class);
                                        startActivity(intent);

                                    }


                                });

                                popDialog.create();
                                popDialog.show();

                                finish();
                            }
                            if(success.equals("0")){
                                pDialog.dismiss();
                                Toast.makeText(getApplicationContext(),"Woooop | INVALID CONTENT",Toast.LENGTH_LONG).show();


                            }
                            if(success.equals("3")){
                                pDialog.dismiss();
                                Toast.makeText(getApplicationContext(),"Woooop | INVALID CONTENT",Toast.LENGTH_LONG).show();


                            }
                        } catch (Exception e) {
                            pDialog.dismiss();
                            e.printStackTrace();
                            Toast.makeText(getApplicationContext(),"Sign Error !1",Toast.LENGTH_LONG).show();
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                pDialog.dismiss();
                Toast.makeText(getApplicationContext(),"Sign Error !2",Toast.LENGTH_LONG).show();
            }
        })
        {
            @Override
            protected Map<String, String> getParams() {
                Map<String,String> params = new HashMap<>();
                params.put("username",String.valueOf(ScanActivity.code));
                return params;
            }
        };
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }

    @Override
    public void onScannedMultiple(List<Barcode> list) {

    }

    @Override
    public void onBitmapScanned(SparseArray<Barcode> sparseArray) {

    }

    @Override
    public void onScanError(String s) {
        Toast.makeText(getApplicationContext(), "Error occurred while scanning " + s, Toast.LENGTH_SHORT).show();
    }
}