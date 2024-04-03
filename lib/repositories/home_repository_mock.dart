import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:spalsh_screen_and_login/models/post_model.dart';
import 'package:spalsh_screen_and_login/repositories/home_repository.dart';

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
