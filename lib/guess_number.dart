// ignore_for_file: avoid_print

import 'dart:io';
import 'game.dart';

/*var myList = <int>[];
var len = myList.length;*/

/*void main() {
  while (true) {
    playGame();
    String? input;

    do {
      stdout.write('Play again? (Y/N): ');
      input = stdin.readLineSync();
    } while (input!.toLowerCase() != 'y' && input.toLowerCase() != 'n');

    if (input.toLowerCase() == 'n') {

      print("You've played $len games");
      for (var i = 0; i < myList.length; i++) {
        print("🚀 Game #${i+1}: ${myList[i]} guesses");
      }
      break;
    }
  }

  // end of program
}*/

String playGame(var x,var game) {
  /*stdout.write('Enter a maximum number to random: ');
  dynamic max = stdin.readLineSync();
  dynamic test = int.tryParse(max);
  var game = Game(maxRandom:test);*/
  var isCorrect = false;
  var text = "";
  //var title = '';

  /*print("╔══════════════════════════════════════════════════════");
  print("║                ❄ GUESS THE NUMBER ❄                 ");
  print("║──────────────────────────────────────────────────────");*/

  //{Game.maxRandom}

  do {
    //stdout.write('║ Guess the number between 1 and ${game.max}: ');
    var input = x;
    var guess = int.tryParse(input!);
    if (guess == null) {
      text = 'Enter incorrect information! Please enter numbers only.';
      return text;
      //continue;
    }
//game.guessCount
    var result = game.doGuess(guess);

    if (result == 1) {
      /*print('║ ➜ $guess is TOO HIGH! ▲');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess is TOO HIGH, Please Try Again.';
      return text;
    } else if (result == -1) {
      /*print('║ ➜ $guess is TOO LOW! ▼');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess is TOO LOW, Please Try Again.';
      return text;
    } else if (result == 0) {
      /*print('║ ➜ $guess is CORRECT 🍸, total guesses: ${game.guessCount}');
      print("║──────────────────────────────────────────────────────");*/
      text = '$guess is CORRECT 🍸, total guesses : ${game.guessCount} times.';
      isCorrect = true;
      return text;
      //myList.add(game.guessCount);

      //return text;
    }
  } while (!isCorrect);
return text;
  /*print("║                     ✨ THE END ✨                     ");
  print("║                    HAPPY NEW YEAR!                   ");
  print("║            May you have a joyous New Year.           ");
  print("╚══════════════════════════════════════════════════════");*/
}