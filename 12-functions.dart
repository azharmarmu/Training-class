import 'dart:ffi';
import 'dart:math';

int aVariable = 10;

// int addition() {
//   int a = 10;
//   int b = 20;
//   int result = a + b;
//   return result;
// }

int aFunction() {
  int a = 10;
  return a;
}

/* refer for task-3*/
void main(List<String> args) {
  int a = 10;
  /* refer for task-3*/
  print(squareFunction(1)); //function call
}

/* refer for task-3*/
double squareFunction(int value) {
  return sqrt(value);
}

int noArg() {
  return 10;
}

int noArg1() => 10; //shorthand function 0r fat arrow function

//funciton definition/declaration- creation

num twoValueAddition(int v1, int v2) {
  return v1 + v2;
}

num threeValueAddition(num v1, num v2, double v3) {
  return v1 + v2 + v3;
}
