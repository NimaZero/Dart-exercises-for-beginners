// Ask the user for a string and print out whether this string is a palindrome or not.
// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main() {
  List<String> userL = [];
  print('Enter a string: ');
  String input = stdin.readLineSync()!.toLowerCase();
  userL.add(input);
  for (String word in userL) {
    bool isPalindrome = word == word.split('').reversed.join('');
    if (isPalindrome) {
      print('$word is a palindrome.');
    } else {
      print('$word is not a palindrome.');
    }
  }
}

//-----------------------------------------------------------

// void main() {
  
//   stdout.write("Please give a word: ");
//   String input = stdin.readLineSync().toLowerCase();
//   String revInput = input.split('').reversed.join('');
  
//   // Ternary operator
//   input == revInput
//       ? print("The word is palindrome")
//       : print("The word is not a palindrome");
// }
