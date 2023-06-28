void main() {
  //Arithmetic operator
  int a = 10;
  int b = 20;

  //Add
  var add = a + b; //int
  print(add);
  print(add.runtimeType); //Datatype

  //Sub
  var sub = a - b; //int
  print(sub);

  //Mul
  var mul = a * b; //int
  print(mul);

  //Div
  var div = a / b; //double
  print(div);

  //Modulus or reminder
  var mod = a % b;
  print(mod);

  //Assignment operator
  String firstName = 'Azhar';
  firstName ??= 'Raj';
  print(firstName);

  //??=
  String? lastName; //null
  lastName ??= 'Marmu';
  print(lastName);

  //Equality Operator
  var age = 11;
  var result = (age == 11); //bool
  //var result = true;
  print(result);

  var result2 = (age != 11); //false
  print(result2);

  //Logical operator
  //Logical AND (&&)
  print('--Logical Operator--');

  var logicalOR = true || false; //datatype: bool
  print(logicalOR);

  var logicalNot = !result;
  print(logicalNot);

  //Relational Operator
  print('--Relational Operator--');

  print(10 >= 11);
  print(10 <= 11);

  //Terinary Operator
  // condition?statement1:statement2
  print('--Terinary Operator--');
  bool tR = result ? false : true;
  print(tR);

  print('--Bitwise Operator--');
  var logicalAnd = true && true && false && false; //datatype: bool
  var bitWiseAnd = false & false & true & false;

  print(logicalAnd);
  print(bitWiseAnd);
}
