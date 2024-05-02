import 'dart:convert';

class Usuario {
  int? id;
  String? nome;
  String? email;
  String? foto;
  String? _senha;

  Usuario({this.id, this.nome, this.email, this.foto, String? senha})
      : _senha = senha;

  set senha(String value) => _senha = value;

  bool isValid(String senha) {
    return senha == _senha;
  }

  String getJson() {
    final map = {"id": id, "nome": nome, "email": email, "senha": _senha};
    return jsonEncode(map);
  }

  factory Usuario.fromJson(String json) {
    final map = jsonDecode(json);
    return Usuario(
        id: map['id'],
        nome: map['nome'],
        email: map['email'],
        senha: map['senha']);
  }
}
