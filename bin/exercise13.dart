// Write a program (function) that takes a list and returns a new list that contains all the elements of
//the first list minus all the duplicates.

void main() {
  List<int> list = [1, 2, 1, 3, 4, 4, 5];
  listChanger(list);
}

listChanger(List list) {
  List a = [];
  for (var i in list) {
    if (!a.contains(i)) {
      a.add(i);
    }
  }
  print(a);
}

//-----------------------------------------------------

// void main() {
//   final random = Random();
//   List<int> randList = List.generate(10, (_) => random.nextInt(10));

//   print("Initial list is $randList\n");
//   print("Cleaned list is ${removeDuplicates(randList)}");
// }

// List<int> removeDuplicates(List<int> initialList) {
//   return initialList.toSet().toList();
// }
