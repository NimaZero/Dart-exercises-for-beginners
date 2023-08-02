// Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
// If you don’t know what a divisor is, it is a number that divides evenly into another number.
// For example, 13 is a divisor of 26 because 26 / 13 has no remainder.

import 'dart:io';

void main() {
  print('Enter a number');
  String input = stdin.readLineSync()!;
  int number = int.parse(input);

  List<int> divisors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }
  print('Divisors of $number is $divisors');
}

//

// void main() {
//   stdout.write("Please choose a number: ");
//   int number = int.parse(stdin.readLineSync());
//   for (var i = 1; i <= number; i++) {
//     if (number % i == 0) {
//       print(i);
//     }
//   }
// }
