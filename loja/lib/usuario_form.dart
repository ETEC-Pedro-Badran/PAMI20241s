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
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          await showDialog(
                              context: context,
                              builder: (context) => dialogConfirmacao());
                          print("A caixa de dialogo foi fechada");
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

  dialogConfirmacao() {
    return Builder(builder: (context) {
      return Dialog(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 250,
            height: 170,
            child: Column(
              children: [
                const Icon(
                  Icons.done,
                  size: 60,
                ),
                const Text(
                  "Usuário registrado com sucesso!",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
                OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK"))
              ],
            ),
          ),
        ),
      );
    });
  }
}
