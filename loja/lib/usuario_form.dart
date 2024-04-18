import 'package:flutter/material.dart';

class UsuarioForm extends StatefulWidget {
  const UsuarioForm({super.key});

  @override
  State<UsuarioForm> createState() => _UsuarioFormState();
}

class _UsuarioFormState extends State<UsuarioForm> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? senha;
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Nome"), border: OutlineInputBorder()),
                validator: (value) => value?.isEmpty ?? true
                    ? "Nome do usuário deve ser informado!"
                    : null,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("E-mail"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.contains("@") ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Informe um e-mail válido!',
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Senha"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.isNotEmpty ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Senha deve ter no mínimo 3 caracteres!',
                onChanged: (value) => senha = value,
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Confirmação da senha"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == senha ? null : 'Senhas não conferem!',
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Limpar")),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Dados Válidos!");
                        } else {
                          print("Dados incompletos!");
                        }
                      },
                      child: const Text("Salvar"))
                ],
              )
            ],
          )),
    );
  }
}
