import 'dart:io';
import 'livro.dart';
import 'biblioteca.dart';

void main() {
  final biblioteca = Biblioteca();

  while (true) {
    print('\n=== Biblioteca Virtual ===');
    print('1. Cadastrar livro');
    print('2. Remover livro');
    print('3. Listar livros');
    print('4. Sair');
    stdout.write('Escolha uma opção: ');

    final opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        cadastrarLivro(biblioteca);
        break;
      case '2':
        removerLivro(biblioteca);
        break;
      case '3':
        biblioteca.listarLivros();
        break;
      case '4':
        print('Saindo do programa.');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}

/// Função que cadastra um livro
void cadastrarLivro(Biblioteca biblioteca) {
  print('\n--- Cadastrar livro ---');
  stdout.write('Digite o título do livro: ');
  final titulo = stdin.readLineSync() ?? '';

  stdout.write('Digite o autor do livro: ');
  final autor = stdin.readLineSync() ?? '';

  stdout.write('Digite o ano de publicação: ');
  final ano = int.tryParse(stdin.readLineSync() ?? '') ?? 1454;

  stdout.write('Digite o ISBN do livro: ');
  final isbn = stdin.readLineSync() ?? '';

  stdout.write('Digite o valor do livro: ');
  final valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (titulo.isNotEmpty && autor.isNotEmpty && ano > 1454 && isbn.isNotEmpty && valor > 0) {
    final livro = Livro(
      titulo: titulo,
      autor: autor,
      anoPublicacao: ano,
      isbn: isbn,
      valor: valor,
    );
    biblioteca.cadastrarLivro(livro);
  } else {
    print('Erro!!! \nTodos os campos são obrigatórios, o ano deve ser um número válido maior que 1454, \no isbn deve ser um número válido maior que 0 e o valor deve ser um número válido maior que 0.');
  }
}

/// Função que remove um livro
void removerLivro(Biblioteca biblioteca) {
  print('\n--- Remover livro ---');
  stdout.write('Digite o ISBN do livro: ');

  final isbn = stdin.readLineSync() ?? '';

  if(isbn.isNotEmpty){
    biblioteca.removerLivro(isbn: isbn);
  } else {
    print('Opção inválida. Nenhuma ação foi realizada.');
  }
}
