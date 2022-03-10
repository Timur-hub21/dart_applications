import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("Rock, Paper, Scissors ur choice?");
    String playerMove = getPlayerOneMove();
    String computerMove = getComputerMove();

    if (playerMove == "Quit") {
      return;
    }
    print("Player move $playerMove");
    print("Computer move $computerMove");
    print(winChecker(playerMove, computerMove));
  }
}

String getPlayerOneMove() {
  String selection = stdin.readLineSync()!.toUpperCase();

  switch (selection) {
    case "R":
      return "Rock";
    case "P":
      return "Paper";
    case "S":
      return "Scissors";
    default:
      return "Quit";
  }
}

String getComputerMove() {
  Random rand = Random();
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "Rock";
    case 1:
      return "Paper";
    case 2:
      return "Scissors";
    default:
      throw Exception('something go wrong');
  }
}

String winChecker(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    return "Tie";
  } else if (playerMove == "Rock" && computerMove == "Scissors") {
    return "You won!";
  } else if (playerMove == "Paper" && computerMove == "Rock") {
    return "You won!";
  } else if (playerMove == "Scissors" && computerMove == "Paper") {
    return "You won!";
  } else {
    return "Computer wins!";
  }
}
