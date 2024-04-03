import 'package:spalsh_screen_and_login/models/post_model.dart';
import 'package:spalsh_screen_and_login/repositories/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    final dio = Dio();
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
