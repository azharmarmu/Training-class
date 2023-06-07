void main(List<String> args) {
  print('--Lists--');
  List<String> fruits = [
    'Apple',
    'Banana',
    'Cucumber',
  ]; //compile time error

  int length = fruits.length; //3
  //print(fruits[length]); //fruits[index] //RunTime Error

  List<dynamic> anyValue = [1, true, 9.0, "Hello"];

  anyValue[0];
  /*or*/ anyValue.first;
  anyValue[anyValue.length - 1];
  /*or*/ anyValue.last;

  print(anyValue);
  print(anyValue.reversed);

  print('\n--Maps--\n');

  Map<String, dynamic> student = {
    "name": "xyz",
    "age": 12,
    "true": 3.5,
  };
  print(student[true]); //student[key]
}
