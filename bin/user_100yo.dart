import 'dart:io';
void main() {
  String name;
  int age;
  const int yo = 100;
  stdout.write("Enter your name: ");
  name = stdin.readLineSync()!;
  stdout.write("Enter your age: ");
  age = int.parse(stdin.readLineSync()!);
  print("$name needs ${yo - age} more years to reach 100 age");
}
