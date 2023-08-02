// Implement a function that takes as input three variables, and returns the largest of the three.
// Do this without using the Dart max() function!
// The goal of this exercise is to think about some internals that Dart normally takes care of for
// us. All you need is some variables and if statements!

import 'dart:io';

void main() {
  print('Hibe give me three variables');
  print('\nEnter input one;');
  int inputOne = int.parse(stdin.readLineSync()!);
  print('\nEnter input two;');
  int inputTwo = int.parse(stdin.readLineSync()!);
  print('\nEnter input three;');
  int inputThree = int.parse(stdin.readLineSync()!);

  maxFun(inputOne, inputTwo, inputThree);
}

maxFun(int inputOne, int inputTwo, int inputThree) {
  if (inputOne > inputTwo && inputOne > inputThree) {
    print('$inputOne is the largest.');
  } else if (inputTwo > inputOne && inputTwo > inputThree) {
    print('$inputTwo is the largest.');
  } else if (inputThree > inputOne && inputThree > inputTwo) {
    print('$inputThree is the largest.');
  } else {
    print('Some thing went wrong!');
  }
}

//------------------------------------------------------------------

// void main() {
//   var max;
//   int a = 32;
//   int b = 12;
//   int c = 64;

//   if (a > b) {
//     max = a;
//   } else {
//     max = b;
//   }

//   if (c > max) {
//     max = c;
//   }
//   print(max);

//   // Another method, which will work with any length
//   List l = [a, b, c, 4, 5, 2, 1];
//   l.sort();
//   print(l.last);
// }
