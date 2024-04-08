import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
