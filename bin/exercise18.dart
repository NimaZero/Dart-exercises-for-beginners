// As you may have guessed, we are trying to build up to a full tic-tac-toe board.
// For now, we will simply focus on checking whether someone has WON the game, not worrying about how the moves were made.
// If a game of Tic Tac Toe is represented as a list of lists, like so:
// game = [[1, 2, 0],
// [2, 1, 0],
// [2, 1, 1]]
// where a 0 means an empty square, a 1 means that player 1 put their token in that space, and a 2
// means that player 2 put their token in that space.
// Your task: given a 3 by 3 list of lists that represents a Tic Tac Toe game board, tell whether anyone
// has won, and tell which player won, if any.
import 'dart:math';
import 'dart:io';


void main() {
  List<List<int>> finalBoard = [
    [1, 0, 0],
    [0, 1, 0],
    [2, 1, 0]
  ];

  theGame(finalBoard);
}

void theGame(List<List<int>> board) {
  /*
  Accepts: list of list of integers
  Does: first checks the rows, then columns then diagonals
        and prints the results if conditions are met
  Returns: nothing
  */
  if (rowCheck(board)) {
    print("Row wins");
  } else if (rowCheck(transpose(board))) {
    print("Column wins");
  } else if (rowCheck(diagonals(board))) {
    print("Diagonal wins");
  } else {
    print("Draw!");
  }
}

bool rowCheck(List<List<int>> board) {
  /* 
  Accepts: list of lists of integers
  Does: checks if any row consists of the same values
  Returns: true if any, false otherwise 
  */
  for (List<int> row in board) {
    if (row.toSet().length == 1) {
      return true;
    }
  }
  return false;
}

List<List<int>> transpose(List<List<int>> board) {
  /* 
  Accepts: list of lists of integers
  Does: transposes it so each row becomes a column
  Returns: the transposed list of lists
  */
  return [
    for (var i = 0; i < board.length; i++) [for (List<int> r in board) r[i]]
  ];
}

List<List<int>> diagonals(List<List<int>> board) {
  /* 
  Accepts: list of list of integers
  Does: takes both diagonals and adds them to a new list
  Returns: new list of lists
  
  Left-to-right diagonal is fairly easy.
  To take the right-to-left diagonal, first we reverse the each row
  then take left-to-right diagonal one more time
  */
  return [
    [for (var i = 0; i < board.length; i++) board[i][i]],
    [for (var i = 0; i < board.length; i++) board[i].reversed.toList()[i]]
  ];
}


//--------------------------------------------------------------------------

// void main() {
//   final random = Random();
//   List<int> listOne = List.generate(3, (_) => random.nextInt(3));
//   List<int> listTwo = List.generate(3, (_) => random.nextInt(3));
//   List<int> listThree = List.generate(3, (_) => random.nextInt(3));
//   print(listOne);
//   print(listTwo);
//   print(listThree);

//   // Horizontal conditions

//   if (listOne.first == listTwo.first && listTwo.first == listThree.first) {
//     if (listOne.elementAt(0) != 0) {
//       print('The player ${listOne.elementAt(0)} won the game');
//     }
//   }
//     if (listOne.elementAt(1) == listTwo.elementAt(1) && listTwo.elementAt(1) == listThree.elementAt(1)) {
//     if (listOne.elementAt(1) != 0) {
//       print('The player ${listOne.elementAt(1)} won the game');
//     }
//   }

//    if (listOne.elementAt(2) == listTwo.elementAt(2) && listTwo.elementAt(2) == listThree.elementAt(2)) {
//     if (listOne.elementAt(2) != 0) {
//       print('The player ${listOne.elementAt(2)} won the game');
//     }
//   }

//   // Vertical conditions

//    if (listOne.first == listOne.elementAt(1) && listOne.elementAt(1) == listOne.elementAt(2)) {
//     if (listOne.elementAt(0) != 0) {
//       print('The player ${listOne.elementAt(0)} won the game');
//     }
//   }
//     if (listTwo.first == listTwo.elementAt(1) && listTwo.elementAt(1) == listTwo.elementAt(2)) {
//     if (listTwo.elementAt(0) != 0) {
//       print('The player ${listTwo.elementAt(0)} won the game');
//     }
//   }

//    if (listThree.first == listThree.elementAt(1) && listThree.elementAt(1) == listThree.elementAt(2)) {
//     if (listThree.elementAt(0) != 0) {
//       print('The player ${listThree.elementAt(0)} won the game');
//     }
//   }

//   // X conditions

//   if(listOne.first == listTwo.elementAt(1) && listTwo.elementAt(1) == listThree.elementAt(2)){
//      if (listOne.elementAt(0) != 0) {
//       print('The player ${listOne.elementAt(0)} won the game');
//     }
//   }

//    if(listOne.elementAt(2) == listTwo.elementAt(1) && listTwo.elementAt(1) == listThree.first){
//      if (listOne.elementAt(2) != 0) {
//       print('The player ${listOne.elementAt(2)} won the game');
//     }
//   }
// }
