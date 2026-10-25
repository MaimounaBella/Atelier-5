//Exercice 2 : Gérer le format des données
import 'dart:io'; // Permet de lire la saisie au clavier.

void main() {
  stdout.write('Saisis ton âge : '); // Affiche la question sans passer à la ligne.
  final texteAge = stdin.readLineSync(); // Récupère la réponse sous forme de texte.

  try {
    final age = int.parse(texteAge!); // Convertit le texte en entier.
    print('Tu as $age ans.'); // Affiche l'âge si la conversion réussit.
  } on FormatException catch (e) {
    // Ce bloc s'exécute si le texte saisi n'est pas un nombre entier valide.
    print('Format invalide : saisis ton âge avec des chiffres.');
  }
}