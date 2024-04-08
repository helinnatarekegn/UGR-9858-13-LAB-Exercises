import 'package:flutter/material.dart';
import 'list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoursesListScreen(
        courses: [
          Course(code: 'IT101', title: 'Introduction to IT'),
          Course(code: 'CS102', title: 'Computer Science Fundamentals'),
          // Add more courses here
        ],
      ),
    );
  }
}
