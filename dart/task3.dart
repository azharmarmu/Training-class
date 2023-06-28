// Do arithmetic operation using function with return type;

// two numbers
// a = 10, b = 20

// pass and get added, subracted, divided and multipled
// value from the respective function and print all values

import 'dart:io';

void main(List<String> args) {
  num a = num.parse(stdin.readLineSync()!);
  num b = num.parse(stdin.readLineSync()!);

  print('Addition: ${addition(a, b)}');

  print('Subraction: ${subraction(a, b)}');
  print('Division: ${division(a, b)}');
  print('Multiplication: ${multiplication(a, b)}');
}

num addition(num a, num b) => a + b;

num subraction(num a, num b) => a - b;

num division(num a, num b) {
  return a / b;
}

num multiplication(num a, num b) {
  return a * b;
}
