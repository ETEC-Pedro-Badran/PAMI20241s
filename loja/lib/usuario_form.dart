import 'package:flutter/material.dart';

class UsuarioForm extends StatelessWidget {
  const UsuarioForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            decoration: InputDecoration(
                label: Text("Nome"), border: OutlineInputBorder()),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text("E-mail"), border: OutlineInputBorder()),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Senha"), border: OutlineInputBorder()),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Confirmação da senha"),
                border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Limpar")),
              ElevatedButton(onPressed: () {}, child: Text("Salvar"))
            ],
          )
        ],
      )),
    );
  }
}
