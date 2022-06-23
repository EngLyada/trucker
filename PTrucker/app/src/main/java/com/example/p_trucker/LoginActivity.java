package com.example.p_trucker;

import android.app.ProgressDialog;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class LoginActivity extends AppCompatActivity {
    TextView account, forget;
    EditText mail,pass;
    Button login;
    Cursor cursor;
    SQLiteDatabase sqLiteDatabase;

    public static  String fname="";
    public static  String store="";
    public static  String email="";
    public  static int code=0;
    ProgressDialog pDialog;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //initalizing fields
        setContentView(R.layout.activity_login);

        mail=(EditText) findViewById(R.id.mail);
        pass=(EditText) findViewById(R.id.pwd);
        login=(Button) findViewById(R.id.login);

        //sqLiteHelper= new SQLiteHelper(this);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String emailCheck = mail.getText().toString();
                String pwdCheck = pass.getText().toString();
                if (TextUtils.isEmpty(emailCheck)) {
                    mail.setError("Please enter your username");
                    mail.requestFocus();

                    return;
                }
                if (TextUtils.isEmpty(pwdCheck)) {
                   pass.setError("Please enter your password");
                    pass.requestFocus();

                    return;
                }
                if (emailCheck.equals("system") && pwdCheck.equals("pass456")){
                    pDialog = ProgressDialog.show(LoginActivity.this, "Logging you in...",
                            "Please wait", true);

                   loginUser();
//                    Intent i = new Intent(LoginActivity.this,CodeActivity.class);
//                    startActivity(i);

                }else{
                    Toast.makeText(getApplicationContext(),"Wrong Username or Password",Toast.LENGTH_LONG).show();
                }

            }
        });


    }

    private void loginUser() {
        pDialog.show();

                                Toast.makeText(getApplicationContext(),"Logged In  Success",Toast.LENGTH_LONG).show();
                                pDialog.dismiss();

                                Intent i = new Intent(LoginActivity.this,CodeActivity.class);
                                startActivity(i);
                                finish();

    }

    public static boolean  loginCheck(Cursor cursor, String emailCheck) {
        while (cursor.moveToNext()){
            if (cursor.getString(4).equals(emailCheck)) {
                return true;
            }else {
                return false;
            }
        }
        return false;
    }



}