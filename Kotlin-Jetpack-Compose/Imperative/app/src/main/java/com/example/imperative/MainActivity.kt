package com.example.imperative

import androidx.activity.ComponentActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView

class MainActivity : ComponentActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val countTextView = findViewById<TextView>(R.id.countTextView)
        val incrementButton = findViewById<Button>(R.id.incrementButton)
        val decrementButton = findViewById<Button>(R.id.decrementButton)
        val resetButton = findViewById<Button>(R.id.resetButton)

        incrementButton.setOnClickListener {
            count++
            countTextView.text = count.toString()
        }

        decrementButton.setOnClickListener {
            count--
            countTextView.text = count.toString()
        }

        resetButton.setOnClickListener {
            count = 0
            countTextView.text = count.toString()
        }
    }
}