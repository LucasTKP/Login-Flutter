import 'package:spalsh_screen_and_login/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
