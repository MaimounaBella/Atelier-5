//Exercice 3 : Lever une exception

// Vérifions que le mot de passe contient au moins 6 caractères.
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    // Lancons une exception si le mot de passe est trop court.
    throw Exception('Le mot de passe doit contenir au moins 6 caractères.');
  }
}

void main() {
  try {
    verifierMotdepasse('abc'); // Ce mot de passe est trop court.
    print('Mot de passe accepté.');
  } catch (e) {
    // Récupèrons l'exception et affiche son message.
    print('Erreur : $e');
  }
}
// Fin de l'exercice 3