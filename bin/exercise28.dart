// In the previous exercise we saved information about famous scientists’ names and birthdays to disk.
// In this exercise, load that JSON file from disk, extract the months of all the birthdays, and count how
// many scientists have a birthday in each month.

import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';

void main() {
  // Read the Json file
  File file = File("D:/devf/dart_exercise1/bin/birthday.json");
  Map<String, Object> data = json.decode(file.readAsStringSync());

  // Extract the months to a list
  DateFormat extractor = DateFormat("MMMM");
  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d.toString()))
  ];

  // Count the occurance of each month
  counter(months);
}

DateTime formatter(String birthday) {
  /*
  Takes a string and returns a Datetime object
  */
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

void counter(List m) {
  /*
  Takes a lits of months and counts their occurances
  Saves them to a map and prints the results
  */
  Map<String, int> occurances = {};

  m.forEach((e) {
    if (!occurances.containsKey(e)) {
      occurances[e] = 1;
    } else {
      occurances[e] ??= 1;
    }
  });

  print("\nHere are the counts:\n");
  occurances.forEach((key, value) {
    print("$key: $value");
  });
}
