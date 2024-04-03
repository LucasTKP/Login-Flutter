import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spalsh_screen_and_login/components/login/custom_login_button_component.dart';
import 'package:spalsh_screen_and_login/controllers/login_controller.dart';
import 'package:spalsh_screen_and_login/widgets/custom_fext_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomTextFieldWidget(
              label: 'Login',
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: 'Senha',
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomLoginButtonComponent(loginController: _controller),
          ],
        ),
      ),
    );
  }
}
