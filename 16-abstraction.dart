void main(List<String> args) {
  // Abstract classes can't be instantiated.
  Human h1; //object
  // h1 = Human(); //instantiation

  Student s1 = Student(); //s1-object of Student
  s1.walk();

  OldMan o1 = OldMan();
  o1.run();
}

abstract class Human {
  void walk(); //hiding implementation

  void run() {
    print('Human run');
  }
}

class Student implements Human {
  @override
  void run() {
    print('I can run 30km/hr');
  }

  @override
  void walk() {
    print('I can walk faster');
  }
}

class OldMan implements Human {
  @override
  void run() {
    print('I can run 10km/hr');
  }

  @override
  void walk() {
    print('I can walk very slow');
  }
}

abstract class Vehicle {
  String? accelarator;
  String? brake;
  String? wheel;
  String? fuelCapacity;

  drive();
  halt();
}

class Bike implements Vehicle {
  @override
  String? accelarator;

  @override
  String? brake;

  @override
  String? wheel;

  @override
  drive() {
    // TODO: implement drive
    throw UnimplementedError();
  }

  @override
  halt() {
    // TODO: implement halt
    throw UnimplementedError();
  }

  @override
  String? fuelCapacity;
}

class Car implements Vehicle {
  @override
  String? accelarator;

  @override
  String? brake;

  @override
  String? wheel;

  @override
  drive() {
    // TODO: implement drive
    throw UnimplementedError();
  }

  @override
  halt() {
    // TODO: implement halt
    throw UnimplementedError();
  }

  @override
  String? fuelCapacity;
}
