// Create a program that will play the “cows and bulls” game with the user. The game works like this:
// Randomly generate a 4-digit number. Ask the user to guess a 4-digit number.
// For every digit the user guessed correctly in the correct place, they have a “cow”.
// For every digit the user guessed correctly in the wrong place is a “bull.”
// Every time the user makes a guess, tell them how many “cows” and “bulls” they have. Once the
// user guesses the correct number, the game is over. Keep track of the number of guesses the
// user makes throughout the game and tell the user at the end.

import 'dart:io';
import 'dart:math';

// I failed this exercise so bad :(

// void main() {
//   /* Generate random number
//   Range is between 1000 and 9999 */
//   final random = Random();
//   String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
//   print(randomNumber);

//   stdout.write("Welcome to Cows and Bulls\nType 'exit' to stop the game\n");

//   int attempts = 0;

//   // Actual game
//   while (true) {
//     int cows = 0;
//     int bulls = 0;
//     attempts += 1;

//     stdout.write("\nPlease choose a four digit number: ");
//     String chosenNumber = stdin.readLineSync()!;

//     // Conditions to check if the game is over
//     if (chosenNumber == randomNumber) {
//       print("Bullseye! You took $attempts attempts");
//       break;
//     } else if (chosenNumber == "exit") {
//       print("Bye bye!");
//       break;
//     } else if (chosenNumber.length != randomNumber.length) {
//       print("Incorrect number. Make sure to give 4 digit number");
//       continue;
//     }

//     /* If a digit is in the same index increase the cow
//     If it is somewhere else increase the bull*/
//     for (var i = 0; i < randomNumber.length; i++) {
//       if (chosenNumber[i] == randomNumber[i]) {
//         cows += 1;
//       } else if (randomNumber.contains(chosenNumber[i])) {
//         bulls += 1;
//       }
//     }
//     print("\nAttempts: $attempts \nCows: $cows, Bulls: $bulls");
//   }
// }

//-------------------------------------------------------------

void main() {
  final random = Random();
  print('\nWelcome to the cow and bull game');
  print('press Exit to exit the game');
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
  print(randomNumber);
  int guess = 0;

  while (true) {
    int cow = 0;
    int bull = 0;
    guess += 1;
    print('Hey guess a 4 digit number:');
    String input = stdin.readLineSync()!;

    //Conditions

    if (input == randomNumber) {
      print('GZ you found the number with $guess gusses!');
      break;
    } else if (input == 'exit') {
      print('Bye!');
      break;
    } else if (input.length != randomNumber.length) {
      print("Incorrect number. Make sure to give 4 digit number");
      continue;
    }

    for (var i = 0; i < randomNumber.length; i++) {
      if (input[i] == randomNumber[i]) {
        cow += 1;
      } else if (randomNumber.contains(input)) {
        bull += 1;
      }
    }
    print("\nAttempts: $guess \nCows: $cow, Bulls: $bull");
  }
}

  //-----------------------------------------------------------

// void main() {
//   print('\nWelcome to the cow and bull game');
//   print('Press "Exit" to exit the game');
//   print('Hey guess a 4 digit number');
//   cowBulls();
// }

// cowBulls() {
//   //Generating 4 random number
//   final random = Random();
//   List<int> randomDigits = List.generate(4, (_) => random.nextInt(9));
//   int randomInteger = 0;
//   for (int randomDigit in randomDigits) {
//     randomInteger = randomInteger * 10 + randomDigit;
//   }
//   print('${randomInteger}\n$randomInteger');
//   int guess = 0;
//   List<String> inputL = [];
//   List<int> cows = [];
//   List<int> bulls = [];

//   while (true) {
//     stdout.write('Enter 4 digit number:');
//     String input = stdin.readLineSync()!;
//     inputL.add(input);
//     guess += 1;
//     try {
//       if (input.toLowerCase() == "exit") {
//         print("\nBye");
//         print('You have guessed $guess times');
//         break;
//       } else if (int.parse(input) > 9999) {
//         print("Please do not go over 4 digit");
//         continue;
//       }
//       for (int i = 0; i < 4; i++) {
//         if (randomDigits[i] == int.parse(input)) {
//           cows.add(1);
//         } else if (randomDigits[i] == int.parse(input.split('')[i])) {
//           bulls.add(1);
//         }
//       }
//       int cowsTotal = cows.length;
//       int bullsTotal = bulls.length;
//       print('$cowsTotal cows and $bullsTotal bulls');
//       cows.clear();
//       bulls.clear();
//     } on FormatException catch (e) {
//       print('Invalid input');
//       continue;
//     }
//   }
// }



