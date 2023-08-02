import 'dart:io';

// Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

// void main() {
//   int number;
//   print('Number:');
//   number = int.parse(stdin.readLineSync()!);
//   if (number % 2 == 0) {
//     print('Your number is even');
//   } else if (number % 2 != 0) {
//     print('Your number is odd');
//   } else if (number == null) {
//     print('Please give me a number!');
//   }
// }


// ---------------------------------------------------------------

// void main() {
//   int? number;
//   print('Number:');
//   String? input = stdin.readLineSync();
  
//   if (input != null) {
//     number = int.tryParse(input);
//   }

//   if (number != null) {
//     if (number % 2 == 0) {
//       print('Your number is even');
//     } else {
//       print('Your number is odd');
//     }
//   } else {
//     print('Please give me a valid number!');
//   }
// }

// --------------------------------------------------------------

import 'dart:io';

void main() {
  int? number;
  bool isValidNumber = false;

  while (!isValidNumber) {
    print('Number:');
    String? input = stdin.readLineSync();

    if (input != null) {
      number = int.tryParse(input);
    }

    if (number != null) {
      isValidNumber = true;

      if (number % 2 == 0) {
        print('Your number is even');
      } else {
        print('Your number is odd');
      }
    } else {
      print('Please give me a valid number!');
    }
  }
}

