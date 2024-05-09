import 'package:loja/abstract_usuario_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'usuario_model.dart';

class UsuarioHelper extends AbstractUsuarioHelper {
  /// Salvar o usuario no armazenamento local chave e valor.
  @override
  Future<void> salvar(Usuario usuario) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("usuario",
        usuario.getJson()); // armazena os dados do usuário na chave usuario
  }

  /// Recupera o usuario do armazenamento local chave e valor.
  @override
  Future<Usuario?> recuperar() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final json = prefs.getString("usuario"); // Le o valor da chave "usuario"
    return json == null ? null : Usuario.fromJson(json);
  }
}
