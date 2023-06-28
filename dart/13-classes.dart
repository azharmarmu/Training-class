// class defintion
class Human {
  //constructor

  //properties
  String? id;
  String? name;
  String? dob;

  //methods
  void canRun() {
    print('$name can run fast');
  }

  int myAge() {
    return 24;
  }

  //getter and setter

}

void main(List<String> args) {
  int a = 10; //function call, //a-variable

  //instance creation // h- object
  Human h1 = Human();
  h1.name = 'Jay';
  h1.id = '001';
  h1.dob = '23/4/1999';

  h1.canRun();

  Human h2 = Human();
  h2.name = 'Vibin';
  h2.id = '002';

  print(h2.myAge());
}

//function definition
int number() {
  return 10;
}
