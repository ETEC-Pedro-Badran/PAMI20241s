import 'usuario_model.dart';

abstract class AbstractUsuarioHelper {
  Future<void> salvar(Usuario usuario);

  /// Recupera o usuario do armazenamento local chave e valor.
  Future<Usuario?> recuperar();
}
