package com.silso.none;

import android.Manifest;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.speech.SpeechRecognizer;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

public class MainActivity extends AppCompatActivity {
    Intent intent;
    SpeechRecognizer Recognizer;
    Button sttBtn;
    TextView textView;
    final int PERMISSION = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        checkPermission();
textView = findViewById(R.id.sttText);
        sttBtn = findViewById(R.id.sttStart);
        sttBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
                intent.putExtra(RecognizerIntent.EXTRA_CALLING_PACKAGE, getPackageName());
                intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, "ko-KR");
                doSpeech();
            }
        });

    }

    private void checkPermission(){
        if (Build.VERSION.SDK_INT >= 23) {
            // 퍼미션(권한) 체크
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.INTERNET,
                    Manifest.permission.RECORD_AUDIO}, PERMISSION);
        }
    }

    private void doSpeech(){
        Recognizer = SpeechRecognizer.createSpeechRecognizer(MainActivity.this);
        Recognizer.setRecognitionListener(new RecognitionListenerImp(MainActivity.this));
        Recognizer.startListening(intent);
    }

    private void doWatch() {
        textView.addTextChangedListener(new TextWatcher() {
            @Override
            public void afterTextChanged(Editable s) { }
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) { }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                Log.e("dsfsdf", s.toString());
                if(s.toString().equals("네이버")){
                    startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.naver.com")));
                }
            }
        });
    }
}
