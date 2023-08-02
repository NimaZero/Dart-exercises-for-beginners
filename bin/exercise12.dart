// Write a program that asks the user how many Fibonnaci numbers to generate and then generates
// them. Take this opportunity to think about how you can use functions.
// Make sure to ask the user to enter the number of numbers in the sequence to generate.

import 'dart:io';

void main() {
  print('How many fiboonaci numbers do you want to generate?');
  fibonnaci();
}

fibonnaci() {
  stdout.write('\nEnter a number:');
  int input = int.parse(stdin.readLineSync()!);
  var number = input;
  fibonnaciCalc(number);
}

void fibonnaciCalc(int number) {
  List<int> list = [];
 if (number >= 1) {
    list.add(0);
  }
  
  if (number >= 2) {
    list.add(1);
  }
  
  for (int i = 2; i < number; i++) {
    int sum = list[i-1] + list[i-2];
    list.add(sum);
  }
  print(list);
}

//----------------------------------------------------

// void main() {
//   stdout.write("How many Fibonacci numbers do you want? ");
//   int chosenNumber = int.parse(stdin.readLineSync()!);

//   List<int> result = fibonacciNumbers(chosenNumber);
//   print(result);
// }

// // Function to calulcate the Fibonacci numbers
// List<int> fibonacciNumbers(int chosenNumber) {
//   List<int> fibList = [1, 1];

//   for (var i = 0; i < chosenNumber; i++) {
//     fibList.add(fibList[i] + fibList[i + 1]);
//   }
//   return fibList;
// }
