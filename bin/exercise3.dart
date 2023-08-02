void main() {
  
  //Take a list, say for example this one:
  // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  // and write a program that prints out all the elements of the list that are less than 5.

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  // for (int element in a) {
  //   if (element <= 5) {
  //     print(element);
  //   }
  // }

  //----------------------------------------------------------
  var lessThan5 = a.where((element) => element < 5);

  print(lessThan5);

  //----------------------------------------------------------

//   void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

//   for (var i in a) {
//     if (i < 5) {
//       print(i);
//     }
//   }

//   // One liner
//   print([for (var i in a) if (i < 5) i]);
// }
}
