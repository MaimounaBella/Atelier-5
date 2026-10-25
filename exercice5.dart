// Exercice 5 : Exception personnalisée

import 'dart:io';

// Exception levée quand le nombre saisi est négatif.
class NombreNegatifException implements Exception {
  final String message;

  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void main() {
  stdout.write('Saisis un nombre : ');
  final texte = stdin.readLineSync();

  try {
    final nombre = int.parse(texte!); // Convertissons la saisie en entier.

    if (nombre < 0) {
      // Un nombre négatif déclenche notre exception personnalisée.
      throw NombreNegatifException('Le nombre ne doit pas être négatif.');
    }

    final carre = nombre * nombre;
    print('Le carré de $nombre est $carre.');
  } on NombreNegatifException catch (e) {
    print('Erreur : $e');
  } on FormatException {
    print('Erreur : tu dois saisir un nombre entier valide.');
  } finally {
    // Ce message s'affiche qu'il y ait une erreur ou non.
    print('Fin d’opération');
  }
}
// Fin de l'exercice 5