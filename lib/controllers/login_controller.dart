import 'package:flutter/material.dart';
import 'package:spalsh_screen_and_login/services/prefs_services.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(
      const Duration(seconds: 2),
    );
    inLoader.value = false;
    if (_login == 'admin' && _pass == '123') {
      PrefsService.save(_login!);
      return true;
    }
    return false;
  }
}
