import 'package:flutter/material.dart';
import 'package:flutter_learn/dummyData/fetchPostUseCase.dart';
import 'package:flutter_learn/dummyData/model/postModel.dart';

class PostViewModel extends ChangeNotifier {
  final FetchPostUseCase fetchPostUseCase;
  PostModel? post;
  bool isLoading = false;
  String? errorMessage;

  PostViewModel({required this.fetchPostUseCase});

  Future<void> getPost(int id) async {
    try {
      isLoading = true;
      notifyListeners();
      post = await fetchPostUseCase(id);
      errorMessage = null;
    } catch (e) {
      errorMessage = "Error fetching post: $e";
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
