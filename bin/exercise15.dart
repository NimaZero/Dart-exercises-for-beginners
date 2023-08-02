// Write a password generator in Dart. Be creative with how you generate passwords - strong
// passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols. The passwords
// should be random, generating a new password every time the user asks for a new password. Include
// your run-time code in a main method.
// Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
  String choice = stdin.readLineSync()!.toLowerCase();

  passwordGenerator(choice);
}

// Create a random sequence of characters
void shuffleGenerator(int strength) {
  final random = Random.secure();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = base64UrlEncode(intList).split('').toList();
  charList.shuffle();
  print("\nYour password is: ${charList.join('')}\n");
}

void passwordGenerator(String strength) {
  if (strength == "weak") {
    shuffleGenerator(5);
  } else if (strength == "medium") {
    shuffleGenerator(15);
  } else if (strength == "strong") {
    shuffleGenerator(25);
  } else {
    print("Incorrect word is given");
  }
}

//---------------------------------------------------------------------------

// void main() {
//   DateTime startTime = DateTime.now();
//   print('Which type of password you want to generate?');
//   print('"Strong" "Weak"');
//   stdout.write('\nFor "Strong" type "S" && and for "Weak" type "W".');
//   stdout.write('\nEnter the input:');
//   String input = stdin.readLineSync()!.toLowerCase();
//   passwordGenerator(input);
//   DateTime endTime = DateTime.now();
//   Duration runTime = endTime.difference(startTime);
//   print('Execution time: ${runTime.inMilliseconds} milliseconds');
// }

// passwordGenerator(String input) {
//   final _random = Random();
//   List<String> lowercaseL = [
//     'a',
//     'b',
//     'c',
//     'd',
//     'e',
//     'f',
//     'g',
//     'h',
//     'i',
//     'k',
//     'l',
//     'm',
//     'n',
//     'o',
//     'p',
//     'q',
//     'r',
//     's',
//     't',
//     'v',
//     'x',
//     'y',
//     'z',
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '0'
//   ];

//   List<String> upperCaseL = [
//     'a',
//     'b',
//     'c',
//     'd',
//     'e',
//     'f',
//     'g',
//     'h',
//     'i',
//     'k',
//     'l',
//     'm',
//     'n',
//     'o',
//     'p',
//     'q',
//     'r',
//     's',
//     't',
//     'v',
//     'x',
//     'y',
//     'z',
//     'A',
//     'B',
//     'C',
//     'D',
//     'E',
//     'F',
//     'G',
//     'H',
//     'I',
//     'K',
//     'L',
//     'M',
//     'N',
//     'O',
//     'P',
//     'Q',
//     'R',
//     'S',
//     'T',
//     'V',
//     'X',
//     'Y',
//     'Z',
//     '1',
//     '2',
//     '3',
//     '4',
//     '5',
//     '6',
//     '7',
//     '8',
//     '9',
//     '0',
//     '@',
//     '#',
//     '%',
//     '!'
//   ];

//   if (input == 'w' || input == 'weak') {
//     List weakList = [];

//     for (var i = 0; i <= 8; i++) {
//       var el = lowercaseL.elementAt(_random.nextInt(lowercaseL.length));
//       weakList.add(el);
//     }
//     String weakPass = weakList.join('');
//     print('\nYour new password is:');
//     print(weakPass);
//   }
//   if (input == 's' || input == 'strong') {
//     List strongList = [];

//     for (var i = 0; i <= 16; i++) {
//       var el = upperCaseL.elementAt(_random.nextInt(upperCaseL.length));
//       strongList.add(el);
//     }
//     String strongPass = strongList.join('');
//     print('\nYour new password is:');
//     print(strongPass);
//   }
// }
