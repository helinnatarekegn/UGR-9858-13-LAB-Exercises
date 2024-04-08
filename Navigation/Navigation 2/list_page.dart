import 'package:flutter/material.dart';
import 'details_page.dart';

class Course {
  final String code;
  final String title;
  final String description;

  Course({required this.code, required this.title, this.description = ""});
}

class CoursesListScreen extends StatelessWidget {
  final List<Course> courses;

  const CoursesListScreen({required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses List")),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.code),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CourseDetailsScreen(course: course)),
              );
            },
          );
        },
      ),
    );
  }
}
