import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Return "Yes" to Screen One'),
          onPressed: () {
            
            Navigator.pop(context, 'Yes');
          },
        ),
      ),
    );
  }
}
