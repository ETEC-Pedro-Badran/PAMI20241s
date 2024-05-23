import 'package:flutter/material.dart';
import 'package:loja/helpers/usuario_helper.dart';
import 'package:loja/modules/login/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Login"),
        ),
        body: LoginForm(helper: UsuarioHelper()));
  }
}
