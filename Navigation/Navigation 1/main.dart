import 'package:flutter/material.dart';
import 'ScreenOne.dart'; 
import 'ScreenTwo.dart'; 
import 'UnknownScreen.dart'; 
import 'DetailScreen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (context) => const ScreenOne());
        }
        
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (context) => const ScreenTwo());
        }
        
        var uri = Uri.parse(settings.name ?? '');
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'details') {
          var id = uri.pathSegments[1];
          return MaterialPageRoute(
            builder: (context) => DetailScreen(id: id),
          );
        }
        
        return MaterialPageRoute(builder: (context) => const UnknownScreen());
      },
    );
  }
}
