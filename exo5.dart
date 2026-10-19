import 'dart:io';

class NombreNegatifException implements Exception {}

void verifierNombre(int nombre) {
  if (nombre < 0) {
    throw NombreNegatifException();
  }
}

void main() {
  try {
    print("Entrez un nombre :");
    String? texte = stdin.readLineSync();
    int nombre = int.parse(texte!);

    verifierNombre(nombre);

    print("Le carré est : ${nombre * nombre}");
  } on FormatException {
    print("Erreur : entrez un nombre entier valide.");
  } on NombreNegatifException {
    print("Erreur : le nombre ne doit pas être négatif.");
  } finally {
    print("Fin d'opération");
  }
}