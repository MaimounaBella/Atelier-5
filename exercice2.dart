// Exercice 2 : Gérer le format des données
import 'dart:io'; // Permet de lire la saisie au clavier.

void main() {
  stdout.write('Saisis ton âge : '); // Affichons la question sans passer à la ligne.
  final texteAge = stdin.readLineSync(); // Récupèrons la réponse sous forme de texte.

  try {
    final age = int.parse(texteAge!); // Convertissons le texte en entier.
    print('Tu as $age ans.'); // Affichons l'âge si la conversion réussit.
  } on FormatException {
    // Ce bloc s'exécute si le texte saisi n'est pas un nombre entier valide.
    print('Format invalide : saisis ton âge avec des chiffres.');
  } finally {
    // Ce bloc s'exécute que la conversion réussisse ou échoue.
    print('Fin d’opération');
  }
}
// Fin de l'exercice 2