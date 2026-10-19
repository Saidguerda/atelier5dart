void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court");
  }
}
void main() {
  try {
    verifierMotdepasse("2004");
    print("Mot de passe valide !");
  } catch (e) {
    print("Erreur : $e");
  }
}
