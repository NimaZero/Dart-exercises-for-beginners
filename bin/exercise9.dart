// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them
// whether they guessed too low, too high, or exactly right.
// Keep track of how many guesses the user has taken, and when the game ends, print this out.
import 'dart:io';
import 'dart:math';

void main() {

  // print("Type exit to quit the game");
  // guessingGame();


  final random = Random();
  print("Welcome to guess the number game\nType '0' to stop the game");
  int num = random.nextInt(100) + 1;
  var maxAttempts = 15;
  var attempts = 0;
  print('\nMaximum attempt: $maxAttempts');
  print('\nChoose a number between 1 and 100');
  stdout.write('\nEnter your number:');
  int input = int.parse(stdin.readLineSync()!);
  int user = 0;

  while (input != 0) {
    attempts++;

    if (input == num - 5 || input == num + 5) {
      print('You are close...');
    } else if (input == num) {
      user += 1;
      print('You guessd exactly right!');
      print('\n You have guessed $user times during the game.');
      break;
    } else if (input < num) {
      user += 1;
      print('Too low!');
    } else if (input > num) {
      user += 1;
      print('Too high!');
    }
    stdout.write('\nEnter your number:');
    input = int.parse(stdin.readLineSync()!);

    if (attempts == maxAttempts) {
      print('\nYou have reached the maximum number of attempts.');
      print('The correct number was $num.');
      break; // Exit the loop when the maximum number of attempts is reached
    }
  }
  if (input == 0) {
    print('\nThanks for playing my game ;)');
    print('\n You have guessed $user times during the game.');
  }
}

//---------------------------------------------------------------------------



guessingGame() {
  final random = Random();
  int randNumber = random.nextInt(100);
  int attempt = 0;

  while (true) {
    attempt += 1;
    stdout.write("Please choose a number between 0 and 100: ");
    String chosenNumber = stdin.readLineSync()!;

    // Make sure user does not go out of limits
    if (chosenNumber.toLowerCase() == "exit") {
      print("\nBye");
      break;
    } else if (int.parse(chosenNumber) > 100) {
      print("Please do not go over 100");
      continue;
    }

    // Main logic
    if (int.parse(chosenNumber) == randNumber) {
      print("Bingo! You tried $attempt times\n");
      continue;
    } else if (int.parse(chosenNumber) > randNumber) {
      print("You are higher");
      continue;
    } else {
      print("You are lower");
      continue;
    }
  }
}
