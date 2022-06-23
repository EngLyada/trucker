package com.example.p_trucker;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class CheckActivity extends AppCompatActivity {
    ProgressDialog pDialog;
    TextView tv,name,ref;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check);
        tv= (TextView) findViewById(R.id.display);
        name= (TextView) findViewById(R.id.name);
        ref= (TextView) findViewById(R.id.ref);
        tv.setText(ScanActivity.code);
        validate();
    }

    private void validate() {
        final AlertDialog.Builder popDialog = new AlertDialog.Builder(this);
        final LayoutInflater inflater = (LayoutInflater) this.getSystemService(LAYOUT_INFLATER_SERVICE);

        String login_url="https://lysmultd.com/trucker/check.php";
        pDialog = ProgressDialog.show(CheckActivity.this, "Validating...",
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
                                        ScanActivity.code="";
                                        Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
                                        startActivity(intent);

                                    }


                                });
                                popDialog.setNegativeButton("Finish", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        ScanActivity.code="";
                                        Intent intent = new Intent(CheckActivity.this, MainActivity.class);
                                        startActivity(intent);

                                    }


                                });

                                popDialog.create();
                                popDialog.show();

                               // finish();
                            }
                            if(success.equals("0")){
                                pDialog.dismiss();
                                popDialog.setTitle("WOOP|| INVALID ITEM");

                                popDialog.setMessage("Product Name: UNKNOWN "+"  "+"Truck Number Plate:  UNKNOWN "+" "+"Product Weight: UNKNOWN");
                                popDialog.setPositiveButton("Scan More", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        ScanActivity.code="";
                                        Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
                                        startActivity(intent);

                                    }


                                });
                                popDialog.setNegativeButton("Finish", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        ScanActivity.code="";
                                        Intent intent = new Intent(CheckActivity.this, MainActivity.class);
                                        startActivity(intent);

                                    }


                                });

                                popDialog.create();
                                popDialog.show();
                            }
                            if(success.equals("3")){
                                pDialog.dismiss();
                                popDialog.setTitle("WOOP|| INVALID ITEM");

                                popDialog.setMessage("Product Name: UNKNOWN "+"  "+"Truck Number Plate:  UNKNOWN "+" "+"Product Weight: UNKNOWN");
                                popDialog.setPositiveButton("Scan More", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
                                        startActivity(intent);

                                    }


                                });
                                popDialog.setNegativeButton("Finish", new DialogInterface.OnClickListener() {

                                    public void onClick(DialogInterface dialog, int which) {
                                        dialog.dismiss();
                                        Intent intent = new Intent(CheckActivity.this, MainActivity.class);
                                        startActivity(intent);

                                    }


                                });

                                popDialog.create();
                                popDialog.show();

                            }
                        } catch (Exception e) {
                            pDialog.dismiss();
                            e.printStackTrace();
                            Toast.makeText(getApplicationContext(),"Check your network",Toast.LENGTH_LONG).show();
                            Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
                            startActivity(intent);
                        }
                    }
                }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                pDialog.dismiss();
                Toast.makeText(getApplicationContext(),"Check your network",Toast.LENGTH_LONG).show();
                Intent intent = new Intent(CheckActivity.this, ScanActivity.class);
                startActivity(intent);
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
}