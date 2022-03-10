import 'dart:io';
void main() {
  const start = 1;
  const stop = 100;
  for (var i = start; i <= stop; i++) {
    var result = fizzBuzz(i);
    print("$i is $result");
  }
}

fizzBuzz(int num, [int fizz = 3, int buzz = 5]) {
  stdout.write("Enter your number: ");
  num = int.parse(stdin.readLineSync()!);
  if (num % fizz == 0 && num % buzz == 0) {
    return "FizzBuzz";
  } else if (num % fizz == 0) {
    return "Fizz";
  } else if (num % buzz == 0) {
    return "Buzz";
  } else {
    return num;
  }
} 
