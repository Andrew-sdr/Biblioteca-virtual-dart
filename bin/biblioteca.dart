import 'livro.dart';

/// Representa a biblioteca virtual
class Biblioteca {
  final List<Livro> _livros = [];

  /// Cadastra um novo livro na biblioteca
  void cadastrarLivro(Livro livro) {
    _livros.add(livro);
    print('Livro "${livro.titulo}" cadastrado com sucesso!');
  }

  /// Remove um livro com base no isbn
  void removerLivro({String? isbn}) {
    _livros.removeWhere((livro) {
      final matchIsbn = isbn != null && livro.isbn == isbn;
      return matchIsbn;
    });
    print('Livro removido com base no critério fornecido.');
  }

  /// Lista todos os livros cadastrados na biblioteca
  void listarLivros() {
    if (_livros.isEmpty) {
      print('Nenhum livro cadastrado na biblioteca.');
    } else {
      print('Livros disponíveis na biblioteca:');
      for (var livro in _livros) {
        print(livro);
      }
    }
  }
}
