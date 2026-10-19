import 'dart:io';

class NombreNegatifException implements Exception {}

void verifierNombre(int nombre) {
  if (nombre < 0) {
    throw NombreNegatifException();
  }
}
