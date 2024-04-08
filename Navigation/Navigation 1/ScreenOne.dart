import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to Screen Two'),
          onPressed: () async {
            final result = await Navigator.pushNamed(context, '/second');
            
            if (result != null) {
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text("Result: $result")));
            }
          },
        ),
      ),
    );
  }
}
