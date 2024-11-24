/// Representa um livro na biblioteca
class Livro {
  String titulo;
  String autor;
  int anoPublicacao;
  String isbn;
  double valor;

  Livro({
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.isbn,
    required this.valor,
  });

  @override
  String toString() {
    return '\nISBN: $isbn\nTítulo: $titulo\nAutor: $autor\nAno: $anoPublicacao\nValor: R\$ ${valor.toStringAsFixed(2)}\n';
  }
}
