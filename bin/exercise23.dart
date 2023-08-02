// In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.
// Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.
// Use the Dart random library for picking a random word.

import 'dart:io';
import 'dart:math';

void main() {
  String filePath = 'D:/devf/dart_exercise1/bin/sowpods.txt';
  pickRandomWordFromFile(filePath).then((randomWord) {
    print("Random word: $randomWord");
  }).catchError((error) {
    print("Error: $error");
  });
}

Future<String> pickRandomWordFromFile(String filePath) async {
  // Read the file contents
  File file = File(filePath);
  String content = await file.readAsString();

  // Split the content into words using a regular expression
  List<String> words = content.split(RegExp(r'\s+'));

  // Remove any empty strings from the list
  words.removeWhere((word) => word.trim().isEmpty);

  // Select a random word from the list
  if (words.isNotEmpty) {
    int randomIndex = Random().nextInt(words.length);
    return words[randomIndex];
  } else {
    throw Exception("File is empty or contains no words.");
  }
}

// ------------------------------------------------------------------

// void main() {
//   String word = randomWord("sowpods.txt");
//   print(word);
// }

// String randomWord(String txt) {
//   /*
//   Reads the given file as a list
//   Then picks a random word from it
//   */
//   final random = Random();
//   var file = File(txt);
//   List<String> wordList = file.readAsLinesSync();
//   String word = wordList[random.nextInt(wordList.length)];
//   return word;
// }