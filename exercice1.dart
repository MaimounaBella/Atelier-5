//Exercice 1 : Try-Catch
void main() {
  // Le bloc try contient le code qui pourrait produire une exception.
  try {
    // ~/ effectue une division entière en Dart.
    // La division par zéro provoque une exception.
    final resultat = 12 ~/ 0;

    // Cette ligne ne s'exécute que si la division réussit.
    print(resultat);
  } catch (e) {
    // Le bloc catch récupère l'exception pour éviter l'arrêt brutal.
    // Le message demandé par l'exercice s'affiche ici.
    print('Division impossible');
  }
}

//Fin de l'Exercice 1