import 'package:flutter/material.dart';
import 'package:loja/login_form.dart';
import 'package:loja/usuario_helper.dart';

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
