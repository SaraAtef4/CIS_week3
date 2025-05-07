import 'dart:io';
import 'dart:math';

void problem1() {
  var random = Random().nextInt(100) + 1;
  int trials = 7;
  print('guess a number between 0 and 100!');
  int? userGuess;

  for (; trials > 0; trials--) {
    userGuess = int.tryParse(stdin.readLineSync()!);
    if (userGuess == null || userGuess > 100 || userGuess < 0) {
      print('enter a valid number between 0 and 100');
      trials++;
      continue;
    } else {
      if (random == userGuess) {
        print(Msg.correct.text);
        return;
      } else if (userGuess > random) {
        if (trials > 1) {
          print(Msg.high.text);
        } else {
          print(Msg.outOfTrails.text);
          print('the random number was: $random');
        }
      } else {
        if (trials > 1) {
          print(Msg.low.text);
        } else {
          print(Msg.outOfTrails.text);
          print('the random number was: $random');
        }
      }

    }
  }
}

enum Msg {
  correct,
  outOfTrails,
  high,
  low;

  String get text {
    switch (this) {
      case Msg.correct:
        return 'Exactly right 🥳';
      case Msg.outOfTrails:
        return 'You have run out of trials 😞';
      case Msg.high:
        return 'too high,try again ⚡';
      case Msg.low:
        return 'too low,try again ⚡';
    }
  }
}
