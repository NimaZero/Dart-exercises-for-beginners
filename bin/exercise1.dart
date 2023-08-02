import 'dart:io';

// Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

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