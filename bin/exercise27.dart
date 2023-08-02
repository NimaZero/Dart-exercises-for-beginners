// In the previous exercise we created a dictionary of famous scientists’ birthdays.
// In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on
// disk, rather than having the dictionary defined in the program.
// Bonus:
// Ask the user for another scientist’s name and birthday to add to the dictionary, and update
// the JSON file you have on disk with the scientist’s name. If you run the program multiple times
// and keep adding new names, your JSON file should keep getting bigger and bigger.

import 'dart:convert';
import 'dart:io';

void main() {
  String filePath = 'D:/devf/dart_exercise1/bin/birthday.json';
  print('\nWelcome to the birthday dictionary. We know the birthdays of:');
  print('Nima\n');
  stdout.write("Who's birthday do you want to look up?\n");
  String input = stdin.readLineSync()!.toLowerCase();

  pickName(filePath, input);
}

pickName(String filePath, String input) async {
  File file = File(filePath);
  String content = await file.readAsString();
  List<dynamic> data = jsonDecode(content);
  String desiredName = input;

  int lastId = 0;
  if (data.isNotEmpty) {
    lastId = data.last['id'];
  }

  String? birthDate;
  int newId = lastId + 1;
  bool nameFound = false;

  for (var items in data) {
    if (items['name'] == desiredName) {
      birthDate = items['birth'];
      nameFound = true;
      break;
    }
  }
  // if(nameFound == false){} or:
  if (!nameFound) {
    print(
        'We dont have the birth date for $desiredName please give me the name so I can add him:');
    String newInput = stdin.readLineSync()!;
    print('Now give me the birth as 04/27/2023 || 09/14/1379:');
    String newBirthInput = stdin.readLineSync()!;
    data.add({'id': newId,'name': newInput, 'birth': newBirthInput});
    String updatedContent = jsonEncode(data);
    await file.writeAsString(updatedContent);
    print(
        'We have added a new file in our database as: $newInput : $newBirthInput');
  } else {
    print('Birth date for $desiredName: $birthDate');
  }
}

//----------------------------------------------------------------------

// void main() {
//   birthdays("birthdays.json");
// }

// void birthdays(String txt) {
//   // Read the file and decode to Json
//   var file = File(txt);
//   Map<String, Object> data = json.decode(file.readAsStringSync());

//   // Current list of people
//   print("\nHello there!. We know the birthdays of the following people: \n");
//   data.forEach((key, value) {
//     print(key);
//   });

//   // User interaction
//   stdout.write("\nWho's birthday do you want to know? ");
//   String choice = stdin.readLineSync();
//   print("\n$choice's birthday is ${data[choice]}\n");

//   stdout.write("\nWould you like to add more people's birthdays? ");
//   String answer = stdin.readLineSync().toLowerCase();

//   // Update the file
//   if (answer == "yes") {
//     stdout.write("Give us a name: ");
//     String name = stdin.readLineSync();
//     stdout.write("Give us their birthday (dd/mm/yyyy): ");
//     String birthday = stdin.readLineSync();

//     data[name] = birthday;
//     file.writeAsStringSync(json.encode(data));

//     print("\nThank you! We have more people now!\n");

//     data.forEach(
//       (key, value) {
//         print("$key: $value");
//       },
//     );
//   } else {
//     print("\nOK. Bye bye!\n");
//   }
// }