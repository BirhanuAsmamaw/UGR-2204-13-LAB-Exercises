package com.example.jetpack_compose

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.ui.Modifier
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CounterApp()
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }

    Surface(modifier = Modifier.fillMaxSize()) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center,
            modifier = Modifier.padding(16.dp)
        ) {
            Text(text = count.toString(), fontSize = 48.sp)

            Spacer(modifier = Modifier.height(16.dp))

            Row {
                Button(
                    onClick = { count++ },
                    modifier = Modifier.padding(8.dp)
                ) {
                    Text("Increment")
                }

                Button(
                    onClick = { count-- },
                    modifier = Modifier.padding(8.dp)
                ) {
                    Text("Decrement")
                }

                Button(
                    onClick = { count = 0 },
                    modifier = Modifier.padding(8.dp)
                ) {
                    Text("Reset")
                }
            }
        }
    }
}