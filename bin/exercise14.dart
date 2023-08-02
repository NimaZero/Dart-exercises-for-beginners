// Write a program (using functions!) that asks the user for a long string containing multiple words.
// Print back to the user the same string, except with the words in backwards order.
// My name is nima --> nima is name My

import 'dart:io';

void main() {
  print('Give me a long string so I can make it backwards!');
  stringFunction();
}

stringFunction() {
  stdout.write('\nEnter the text:');
  String input = stdin.readLineSync()!;
  backwardGenerator(input);
}

backwardGenerator(String input) {
  List<String> list = [];
  list.add(input);
  for (var i in list) {
    print(i.split(' ').reversed.join(' '));
  }
}


//--------------------------------------------------------

// void main() {
//   stdout.write("Please give a sentence: ");
//   String sentence = stdin.readLineSync();

//   reverseSentence(sentence);
// }

// void reverseSentence(String sentence) {
//   /* Split the sentence into a list of words
//   Reverse the list, then join the words back */
//   String a = sentence.split(" ").reversed.toList().join(" ");
//   print(a);
// }