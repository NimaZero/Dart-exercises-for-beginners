// Make a two-player Rock-Paper-Scissors game against computer.
// Ask for player’s input, compare them, print out a message to the winner.

import 'dart:io';
import 'dart:math';

// void main() {
//   print('Rock(1)-Paper(2)-Scissors(3)');
//   print('Enter your choice:');
//   int playerChoice = int.parse(stdin.readLineSync()!);
//   int getRandomNumber(int min, int max) {
//     return Random().nextInt(max - min + 1) + min;
//   }

//   int computerChoice = getRandomNumber(1, 3);

//   if (playerChoice == 1) {
//     print(computerChoice);
//     if (computerChoice == 1) {
//       print('Draw');
//     } else if (computerChoice == 2) {
//       print('You lost!');
//     } else if (computerChoice == 3) {
//       print('Player wins.');
//     }
//   }

//     if (playerChoice == 2) {
//     print(computerChoice);
//     if (computerChoice == 1) {
//       print('Player wins');
//     } else if (computerChoice == 2) {
//       print('Draw');
//     } else if (computerChoice == 3) {
//       print('Player lost!');
//     }
//   }

//     if (playerChoice == 3) {
//     print(computerChoice);
//     if (computerChoice == 1) {
//       print('Player lost');
//     } else if (computerChoice == 2) {
//       print('Player wins.');
//     } else if (computerChoice == 3) {
//       print('Draw');
//     }
//   }

// }

//-----------------------------------------------------

// enum Choice {
//   rock,
//   paper,
//   scissors,
// }

// void main() {
//   print('Rock(1)-Paper(2)-Scissors(3)');
//   print('Enter your choice:');
//   int playerChoice = int.parse(stdin.readLineSync()!);
//   int getRandomNumber(int min, int max) {
//     return Random().nextInt(max - min + 1) + min;
//   }

//   Choice computerChoice = Choice.values[getRandomNumber(1, 3)];

//   switch (playerChoice) {
//     case 1:
//       print(computerChoice);
//       if (computerChoice == Choice.rock) {
//         print('Draw');
//       } else if (computerChoice == Choice.paper) {
//         print('You lost!');
//       } else if (computerChoice == Choice.scissors) {
//         print('Player wins.');
//       }
//       break;
//     case 2:
//       print(computerChoice);
//       if (computerChoice == Choice.rock) {
//         print('Player wins');
//       } else if (computerChoice == Choice.paper) {
//         print('Draw');
//       } else if (computerChoice == Choice.scissors) {
//         print('Player lost!');
//       }
//       break;
//     case 3:
//       print(computerChoice);
//       if (computerChoice == Choice.rock) {
//         print('Player lost');
//       } else if (computerChoice == Choice.paper) {
//         print('Player wins.');
//       } else if (computerChoice == Choice.scissors) {
//         print('Draw');
//       }
//       break;
//     default:
//       print('Invalid choice');
//   }
// }

//-------------------------------------------------------

void main() {
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();

  // Rules of the game
  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };

  // Initial score
  int user = 0;
  int comp = 0;

  // Options for computer to choose
  List<String> options = ["rock", "paper", "scissors"];

  // Actual game
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "exit") {
      print("\nYou: $user Computer: $comp\nBye Bye!");
      break;
    }

    if (!options.contains(userChoice)) {
      print("Incorrect choice");
      continue;
    } else if (compChoice == userChoice) {
      print("We have a tie!");
    } else if (rules[compChoice] == userChoice) {
      print("Computer wins: $compChoice vs $userChoice");
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print("You win: $userChoice vs $compChoice");
      user += 1;
    }
  }
}

