import 'package:flutter/material.dart';
import 'list_page.dart';

class CourseDetailsScreen extends StatelessWidget {
  final Course course;

  const CourseDetailsScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(course.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(course.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8), // Added for spacing
            Text(course.code,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            SizedBox(height: 8), // Added for spacing
            Text(
                course.description.isEmpty
                    ? "No description available."
                    : course.description,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
          ],
        ),
      ),
    );
  }
}
