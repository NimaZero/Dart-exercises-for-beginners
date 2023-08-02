// In this exercise, we will finish building Hangman. In the game of Hangman, the player only has 6
// incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.
// Copy your code from Parts 1 and 2 into a new file as a starting point. Now add the following features:
// Only let the user guess 6 times, and tell the user how many guesses they have left.
// Keep track of the letters user guessed. If the user guesses a letter they had already guessed,
// don’t penalize them - let them guess again.
// Optional additions:
// When the player wins or loses, let them start a new game.
// Rather than telling the user “You have 4 incorrect guesses left”, display some picture art for
// the Hangman. This is challenging - do the other parts of the exercise first!
// Your solution will be a lot cleaner if you make use of functions to help you!

import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  Set<String> randomWordsList = {'Nima', 'Nimbus', 'Kimia', 'Warcraft'};
  String word =
      randomWordsList.elementAt(random.nextInt(randomWordsList.length)).toString().toLowerCase();
  print(word);
  hangMan(word);
}

void hangMan(String word) {
  // set save the unique elements and it won't be duplicated...
  Set<String> guessedLetters = {};
  int maxAttempts = 6;
  int incorrectGuesses = 0;

  while (incorrectGuesses < maxAttempts) {
    print('\nGuess a letter');
    stdout.write('Enter your input:');
    String input = stdin.readLineSync()!.toLowerCase().trim(); // Trim the input

    if (input.isEmpty) {
      print('Please enter a letter.');
      continue;
    }

    if (guessedLetters.contains(input)) {
      print('You have already guessed this letter.');
    } else if (word.contains(input)) {
      guessedLetters.add(input);
      print('Your given letter ($input) is part of the word.');
    } else {
      guessedLetters.add(input);
      incorrectGuesses++;
      print('Your letter is not part of the word. Incorrect Guesses: $incorrectGuesses/$maxAttempts');
    }

    // Check if all unique letters of the word have been guessed
    Set<String> uniqueLettersInWord = word.split('').toSet();
    if (guessedLetters.containsAll(uniqueLettersInWord)) {
      print('You have guessed all the correct letters in the word ($word)!');
      break;
    }
  }

  if (incorrectGuesses == maxAttempts) {
    print('You have reached the maximum number of incorrect guesses. The word was: $word');
  }
}

// -----------------------------------------------------------------

// void main() {
//   // Pick a random word
//   String theWord = randomWord("sowpods.txt");

//   intro();
//   hangman(theWord);
// }

// void hangman(String word) {
//   /*
//   Takes the word and create a clue
//   Ask the user to guess a letter
//   Check if the letter is in the word
//   If yes, put the letter in the same index of the clue
//   */

//   List clue = ("___ " * word.length).split(" ");

//   // Initial state
//   print(clue.join(" "));
//   int count = 0;
//   int attempts = word.length + 1;
//   List history = [];

//   // Game
//   while (true) {
//     count += 1;
//     attempts -= 1;

//     // User input
//     stdout.write("\nPlease guess a letter: ");
//     String choice = stdin.readLineSync().toUpperCase();
//     if (history.contains(choice)) {
//       print("\nYou already tried this letter!");
//       attempts += 1;
//     } else {
//       history.add(choice);
//     }

//     /* 
//     Allow user to type the whole word or exit the game
//     Any other incorrect case, demand a single letter */
//     if (choice == word) {
//       print("\nBingo! Attemps: $count");
//       break;
//     } else if (choice == "EXIT") {
//       print("\nBye bye!\n");
//       break;
//     } else if (choice.length > 1) {
//       attempts += 1;
//       print("\nNope! Attemps left: $attempts");
//       continue;
//     } else if (attempts < 1) {
//       print("\nAttemps left: $attempts. \nGame over!");
//       print("\nThe word was: $word");
//       break;
//     }

//     // Check the word for guessed letter
//     for (var i = 0; i < word.length; i++) {
//       if (word[i] == choice) {
//         clue[i] = choice;
//       }
//     }
//     print("\nAttempts left: $attempts");

//     // Current state
//     print(clue.join(" "));

//     // End the game if there are no more guesses
//     if (clue.join("") == word) {
//       print("\nBingo! Attemps:$count\n");
//       break;
//     }
//   }
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

// void intro() {
//   print("""\n
//   Welcome to Hangman!
//   We prepared a word for you.
//   You have 6 attempts to guess it correctly
//   You can type the whole word anytime before attempts are over
//   To quit the game type "exit"
//   """);
// }
