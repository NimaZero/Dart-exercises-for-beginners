import 'dart:io';

void main() {
  String? name;
  int? age;
  int maxAge = 100;
  // Getting data from user
  print('Name:');
  name = stdin.readLineSync();
  print('Age:');
  age = int.parse(stdin.readLineSync()!);
  // Info
  print('-------------');
  print('Name: $name');
  print('Age: $age');
  print('-------------');
  // Final message
  print('$name you have ${maxAge - age} years to be 100 years old!');
}