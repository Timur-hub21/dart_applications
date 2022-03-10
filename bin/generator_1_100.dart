import 'dart:io';
import 'dart:math';

void main() {
  int guess;
  Random rand = Random(); // генерируем число
  int randnum = rand.nextInt(101); // получаем число от 0 до 100 (101)
  // print(randnum);
  do {
    stdout.write("Guess the number: ");
    String conv = stdin.readLineSync()!; // читает input как строку
    guess = int.parse(conv); // строку в инт
    if (guess < randnum) {
      print("Too low!");
    } else if (guess > randnum) {
      print("Too high");
    }
  } while (guess != randnum);
  print("You won!");
}


