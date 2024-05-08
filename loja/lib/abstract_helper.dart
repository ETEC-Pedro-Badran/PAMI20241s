import 'usuario_model.dart';

abstract class AbstractHelper {
  Future<void> salvar(Usuario usuario);

  /// Recupera o usuario do armazenamento local chave e valor.
  Future<Usuario?> recuperar();
}