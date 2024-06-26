import 'package:flutter/material.dart';
import 'package:loja/helpers/abstract_usuario_helper.dart';
import 'package:loja/helpers/usuario_helper.dart';
import 'package:loja/usuario/registro_usuario.dart';

class LoginForm extends StatefulWidget {
  final AbstractUsuarioHelper helper;
  const LoginForm({super.key, required this.helper});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? senha;
    String? email;

    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("E-mail"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.contains("@") ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Informe um e-mail válido!',
                onSaved: (newValue) => email = newValue, //<<<<<<<<<<<<<
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Senha"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.isNotEmpty ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Senha deve ter no mínimo 3 caracteres!',
                onChanged: (value) => senha = value,
                onSaved: (newValue) => senha = newValue, //<<<<<<<<<<<<
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        //Navega para uma rota. Essa rota é capaz de carregar uma tela
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegistroUsuario()));
                      },
                      child: Text("Registrar-se")),
                  ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Limpar")),
                  ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          final usuario = await UsuarioHelper().recuperar();
                          if (usuario != null &&
                              usuario.email == email &&
                              usuario.isValid(senha ?? "")) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Usuário Válido!")));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Usuário inválido!")));
                          }
                        } else {
                          print("Dados incompletos!");
                        }
                      },
                      child: const Text("Entrar"))
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
