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
}
