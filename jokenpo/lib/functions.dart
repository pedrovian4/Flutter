// ignore_for_file: non_constant_identifier_names

import 'dart:math';

late Jokenpo u = Jokenpo();

class Jokenpo {
  // ignore: unused_field
  final _choices = ['Scissors', 'Rock', 'paper'];
  late String addres;

  late String result = " ";

  int IndexGenerator() {
    Random random = Random();

    return random.nextInt(3);
  }

  String Check(String userInput) {
    String computerChoice;
    computerChoice = _choices[IndexGenerator()];
    result = 'Draw';
    // ignore: avoid_print
    print('Computer: $computerChoice user: $userInput');

    return result;
  }
}
