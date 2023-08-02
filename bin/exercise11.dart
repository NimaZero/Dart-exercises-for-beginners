// Write a program that takes a list of numbers for example a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements of the given list.
// For practice, write this code inside a function.

void main() {
  List<int> a = [5, 10, 15, 20, 25];
  listChanger(a);
}

listChanger(List<int> number) {
  List<int> b = [];
  b.add(number.first);
  b.add(number.last);
  print(b);
}

//-----------------------------------------------------

// void main() {
//   // Initialize the random list
//   final random = Random();
//   List<int> randList = List.generate(10, (_) => random.nextInt(100));

//   // Pass it to the function
//   print(randList);
//   print(newList(randList));
// }

// // Function that returns the first and the last element of given list
// List<int> newList(List<int> initialList) {
//   return [initialList.first, initialList.last];
// }
