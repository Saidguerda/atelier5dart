class MotdepasseCourtException implements Exception {}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
}

void main() {
  try {
    verifierMotdepasse("1904");
    print("Mot de passe valide !");
  } catch (e) {
    print("Erreur : le mot de passe doit contenir au moins 6 caractères.");
  }
}
