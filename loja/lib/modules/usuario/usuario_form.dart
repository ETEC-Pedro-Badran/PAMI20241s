import 'package:flutter/material.dart';

import 'package:loja/helpers/abstract_usuario_helper.dart';
import 'package:loja/helpers/usuario_helper.dart';
import 'package:loja/modules/usuario/registro_store.dart';

class UsuarioForm extends StatefulWidget {
  final AbstractUsuarioHelper helper;
  final RegistroStore store;
  const UsuarioForm({super.key, required this.helper, required this.store});

  @override
  State<UsuarioForm> createState() => _UsuarioFormState();
}

class _UsuarioFormState extends State<UsuarioForm> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //String? senha;
    //Usuario usuario = Usuario();
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
                onSaved: (newValue) => widget.store.usuario?.nome = newValue,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("E-mail"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.contains("@") ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Informe um e-mail válido!',
                onSaved: (newValue) => widget.store.usuario?.email = newValue,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text("Senha"), border: OutlineInputBorder()),
                validator: (value) =>
                    (value?.isNotEmpty ?? false) && (value?.length ?? 0) > 3
                        ? null
                        : 'Senha deve ter no mínimo 3 caracteres!',
                onChanged: (value) => widget.store.usuario?.senha = value,
                onSaved: (newValue) => widget.store.usuario?.senha = newValue!,
                obscureText: true,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Confirmação da senha"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) => widget.store.usuario!.isValid(value ?? "")
                    ? null
                    : 'Senhas não conferem!',
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

                          try {
                            await UsuarioHelper().salvar(widget.store.usuario!);
                          } catch (e) {
                            await showDialog(
                                context: context,
                                builder: (context) => dialogErro());
                            return;
                          }
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

  dialogErro() {
    //<<<<<<<<<<<<<<<<<<<<
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
                  Icons.error, //<<<<<<<<<<<<<<<<<<<
                  size: 60,
                ),
                const Text(
                  "Erro salvando o usuário!", //<<<<<<<<<<<<<<<<<
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
