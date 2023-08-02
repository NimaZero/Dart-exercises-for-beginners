// Time for some fake graphics! Let’s say we want to draw game boards that look like this:
// Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

import 'dart:io';

// void main() {
//   print('Hi tell me the row and column');
//   stdout.write('Row:');
//   int row = int.parse(stdin.readLineSync()!);
//   stdout.write('Column:');
//   int column = int.parse(stdin.readLineSync()!);

//   boardGenerator(row, column);
// }

// boardGenerator(int row, int column) {
//   for (int i = 1; i <= row; i++) {
//     stdout.write(
//       '\n --- ',
//     );
//     stdout.write(
//       '\n|   |',
//     );
//   }
//   stdout.write('\n');
//    for (int i = 1; i <= row; i++) {
//     stdout.write(
//       '\n --- ',
//     );
//     stdout.write(
//       '\n|   |',
//     );
//   }
// }

//----------------------------------------------

void main() {
  print('Enter the number of rows:');
  int rows = int.parse(stdin.readLineSync()!);

  print('Enter the number of columns:');
  int columns = int.parse(stdin.readLineSync()!);

  printBoard(rows, columns);
}

void printBoard(int rows, int columns) {
  String horizontalLine = ' ---' * columns;

  for (int row = 0; row < rows; row++) {
    print(horizontalLine);

    String verticalLine = '|';
    for (int column = 0; column < columns; column++) {
      verticalLine += '   |';
    }
    print(verticalLine);
  }
  print(horizontalLine);
}


//---------------------------------------------------------------

// void main() {
//   stdout.write("What square size do you want: ");
//   int userChoice = int.parse(stdin.readLineSync());
//   print("Here is a $userChoice by $userChoice board: \n");

//   drawBoard(userChoice);
// }

// void drawBoard(int squareSize) {
//   // Basic building blocks
//   String rowLines = " ---";
//   String colLines = "|   ";

//   // For loop for drawing the board
//   for (var i = 0; i < squareSize; i++) {
//     print(rowLines * squareSize);
//     print(colLines * (squareSize + 1));
//   }

//   // Add the last line to the board
//   print("${rowLines * squareSize}\n");
// }
