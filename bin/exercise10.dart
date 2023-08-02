// Ask the user for a number and determine whether the number is prime or not.
// Do it using a function

import 'dart:io';
import 'dart:math';

void main() {
  print('\nEnter a number:');
  int input = int.parse(stdin.readLineSync()!);

  if (isPrime(input)) {
    print('\n$input is a prime number.');
  } else {
    print('\n$input is not prime');
  }
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

//----------------------------------------------------------

// void main() {
//   stdout.write("Please give us a number: ");
//   int chosenNumber = int.parse(stdin.readLineSync()!);

//   checkPrime(chosenNumber);
// }

// void checkPrime(int number) {
//   // List comprehensions
//   List<int> a = [
//     for (var i = 1; i <= number; i++)
//       if (number % i == 0) i
//   ];

//   // Check for prime
//   a.length == 2
//       ? print("The chosen number is a prime")
//       : print("The chosen number is not a prime");
// }
