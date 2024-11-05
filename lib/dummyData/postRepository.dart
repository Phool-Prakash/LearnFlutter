import 'dart:convert';

import 'package:flutter_learn/constant/constant.dart';
import 'package:flutter_learn/dummyData/model/postModel.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  Future<PostModel> fetchPost(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/post/$id'));
    if (response.statusCode == 200) {
      return PostModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
