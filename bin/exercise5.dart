// Take two lists, for example, and write a program that returns a list that contains only
//the elements that are common between them (without duplicates).
//Make sure your program works on two lists of different sizes.

// void main() {
//   List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
//   List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
//   List<int> c = [];

//   for (int A in a) {
//     if (!c.contains(A)) {
//       for (int B in b) {
//         if (A == B && !c.contains(B)) {
//           c.add(A);
//         }
//       }
//     }
//   }
//   print(c);
// }

//-------------------------------------------------------------

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};

  for (var i in a) {
    for (var j in b) {
      if (i == j) {
        c.add(i);
      }
    }
  }
  print(c.toList());

  // One liner using set intersections
  print(Set.from(a).intersection(Set.from(b)).toList());
}
