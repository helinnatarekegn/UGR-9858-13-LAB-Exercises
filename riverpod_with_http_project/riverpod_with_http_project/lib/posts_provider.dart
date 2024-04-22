import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './posts_model.dart';

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((item) => Post.fromJson(item)).toList();
  } else {
    throw Exception('Failed to fetch posts');
  }
});
