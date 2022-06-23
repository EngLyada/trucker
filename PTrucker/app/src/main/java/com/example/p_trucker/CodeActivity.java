package com.example.p_trucker;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.RequestQueue;

public class CodeActivity extends AppCompatActivity {

    EditText pin;
    Button b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11;
    String pincheck;
    SQLiteDatabase sqLiteDatabase;

    RequestQueue requestQueue ;
    public static  String assesser_name="";
    public static  int code=4321;

    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_code);
        pin=(EditText) findViewById(R.id.pin);
        b1=(Button) findViewById(R.id.b1);
        b2=(Button) findViewById(R.id.button2);
        b3=(Button) findViewById(R.id.button3);
        b4=(Button) findViewById(R.id.button4);
        b5=(Button) findViewById(R.id.button5);
        b6=(Button) findViewById(R.id.button6);
        b7=(Button) findViewById(R.id.button7);
        b8=(Button) findViewById(R.id.button8);
        b9=(Button) findViewById(R.id.button9);
        b10=(Button) findViewById(R.id.button10);
        b11=(Button) findViewById(R.id.button11);

        pincheck=pin.getText().toString();
        pin.setShowSoftInputOnFocus(false);
        pin.setGravity(Gravity.RIGHT);

        pin.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {

            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if(pin.getText().length()==4 ){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }}
            }

            @Override
            public void afterTextChanged(Editable s) {
                if(pin.getText().length()==4 ){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }}
            }
        });
        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4 ){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }
                }else{
                    pin.setText(pin.getText().toString() + "1");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }

            }
        });
        b2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText().toString() + "2");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText().toString() + "3");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText().toString() + "4");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b5.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText().toString() + "5");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b6.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText().toString() + "6");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b7.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText() + "7");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b8.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText() + "8");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b9.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }

                }else{
                    pin.setText(pin.getText() + "9");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b10.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(pin.getText().length()==4){
                    if(Integer.parseInt(pin.getText().toString())==code) {
                        showDialog();
                    }else {
                        pin.setText("");
                    }
                }else{
                    pin.setText(pin.getText() + "0");
                    int position = pin.length();
                    Selection.setSelection(pin.getText(), position);
                }
            }
        });
        b11.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pin.setText("");
            }
        });

        if(pin.getText().length()==4){
            if(Integer.parseInt(pin.getText().toString())==code) {
                showDialog();
            }

        }
    }



    void  showDialog(){


            Intent register = new Intent(CodeActivity.this, MainActivity.class);
            startActivity(register);


    }


}