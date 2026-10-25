// Exercice 4 : Exception personnalisée

// Exception utilisée quand le mot de passe est trop court.
class MotdepasseCourtException implements Exception {
  final String message;

  MotdepasseCourtException(this.message);

  @override
  String toString() => message;
}

// Vérifie que le mot de passe contient au moins 6 caractères.
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    // Lève notre exception personnalisée si le mot de passe est trop court.
    throw MotdepasseCourtException(
      'Le mot de passe doit contenir au moins 6 caractères.',
    );
  }
}

void main() {
  try {
    verifierMotdepasse('abc'); // Ce mot de passe est trop court.
    print('Mot de passe accepté.');
  } on MotdepasseCourtException catch (e) {
    // Récupère l'exception personnalisée et affiche son message.
    print('Erreur : $e');
  }
}
// Fin de l'exercice 4