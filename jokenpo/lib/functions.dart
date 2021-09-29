// ignore_for_file: non_constant_identifier_names

import 'dart:math';

late Jokenpo u = Jokenpo();

class Jokenpo {
  // ignore: unused_field
  final _choices = ['Scissors', 'Rock', 'paper'];

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

    if ((_choices[0] == computerChoice && _choices[2] == userInput) ||
        (_choices[2] == computerChoice && _choices[0] == userInput) ||
        (_choices[1] == computerChoice && _choices[2] == userInput)) {
      result = 'Lost';
    }
    if ((_choices[0] == computerChoice && _choices[1] == userInput) ||
        (_choices[1] == computerChoice && _choices[2] == userInput) ||
        (_choices[2] == computerChoice && _choices[0] == userInput)) {
      result = 'Won';
    }

    return result;
  }
}
