import 'package:flutter/material.dart';
import 'package:loja/registro_usuario.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        title: 'Material App',
        home: RegistroUsuario());
  }
}
