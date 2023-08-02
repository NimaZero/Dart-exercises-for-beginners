// For this exercise, we will keep track of when our friend’s birthdays are, and be able to find that
// information based on their name.
// Create a dictionary (in your file) of names and birthdays. When you run your program it should ask
// the user to enter a name, and return the birthday of that person back to them.

import 'dart:io';

void main() {
  String filePath = 'D:/devf/dart_exercise1/bin/birthday.txt';
  print('\nWelcome to the birthday dictionary. We know the birthdays of:');
  print('Nima\n');
  stdout.write("Who's birthday do you want to look up?\n");
  String input = stdin.readLineSync()!.toLowerCase();

  pickName(filePath, input).then((value) {
    if (value != null) {
      print("${input}'s birthday is $value.");
    } else {
      print('$input not found in the file.');
    }
  });
}

Future<String?> pickName(String filePath, String input) async {
  File file = File(filePath);
  String content = await file.readAsString();
  // Split the content by lines
  List<String> lines = content.trim().split('\n');

  // Find the line that contains the given name
  for (String line in lines) {
    if (line.contains('$input =')) {
      // Extract the value after the '=' sign and remove any leading/trailing whitespace
      String value = line.split('=')[1].trim();
      return value;
    }
  }
  return null;
}

// -----------------------------------------------------------------

// void main() {
//   // Map of birthdays of people
//   Map<String, Object> birthdays = {
//     "Albert Einstein": "14/03/1879",
//     "Benjamin Franklin": "17/01/1706",
//     "Ada Lovlace": "10/12/1815",
//   };

//   print("\nHello there!. We know the birthdays of the following people: \n");

//   birthdays.forEach((key, value) {
//     print(key);
//   });

//   stdout.write("\nWho's birthday do you want to know? ");
//   String choice = stdin.readLineSync();

//   print("\n$choice's birthday is ${birthdays[choice]}\n");
// }
