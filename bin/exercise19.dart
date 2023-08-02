// The next logical step is to deal with handling user input. When a player (say player 1, who is X)
// wants to place an X on the screen, they can’t just click on a terminal. So you are going to
// approximate this clicking simply by asking the user for a coordinate of where they want to place their piece.

import 'dart:io';

// void main() {
//   List listOne = [1, 2, 3];
//   List listTwo = [4, 5, 6];
//   List listThree = [7, 8, 9];
//   print(listOne);
//   print(listTwo);
//   print(listThree);
//   stdout.write('Give me the input');
//   print('\nEnter the input:');
//   String input = stdin.readLineSync()!.toLowerCase();


//   boardChanger(input, 'x1', 0, listOne);
//   boardChanger(input, 'x2', 1, listOne);
//   boardChanger(input, 'x3', 2, listOne);
//   boardChanger(input, 'x4', 0, listTwo);
//   boardChanger(input, 'x5', 1, listTwo);
//   boardChanger(input, 'x6', 2, listTwo);
//   boardChanger(input, 'x7', 0, listThree);
//   boardChanger(input, 'x8', 1, listThree);
//   boardChanger(input, 'x9', 2, listThree);
//   print(listOne);
//   print(listTwo);
//   print(listThree);
// }

// boardChanger(String input, String yInput, int index, List list) {
//   if (input == yInput) {
//     list[index] = 'X';
//   }
// }

//---------------------------------------------------------------------

void main() {
  // Empty board
  List<List<String>> initialBoard =
      List.generate(3, (_) => List.generate(3, (_) => ' '));
  drawBoard(initialBoard, 2);
}

void drawBoard(List<List<String>> board, int currentUser) {
  /*
  Takes an initial board and populates it 
  either with X or with O depending on
  the currentUser
  */
  var move;
  currentUser == 1 ? move = 'X' : move = 'O';

  stdout.write("Please choose a coordinate: ");
  List choice = stdin.readLineSync()!.split(" ");
  board[int.parse(choice[0])][int.parse(choice[1])] = move;
  print(board);
}
