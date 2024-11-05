import 'package:flutter_learn/dummyData/model/postModel.dart';
import 'package:flutter_learn/dummyData/postRepository.dart';

class FetchPostUseCase {
  final PostRepository postRepository;

  FetchPostUseCase(this.postRepository);

  Future<PostModel> call(int id) async {
    return await postRepository.fetchPost(id);
  }
}
