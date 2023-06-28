abstract class Father {
  late int farmFeilds;
  late double money;
  late int _dress;

  double calculateIncome() {
    return 10;
  }
}

class Mother {
  late double money;

  double calculateIncome() {
    return 1000;
  }
}

class Child extends Father {
  late int books;

  void reading() {
    print('Iam reading');
  }

  void writing() {
    print('Iam writing');
  }

  @override
  double calculateIncome() {
    return super.calculateIncome();
  }
}

void main(List<String> args) {
  Child child1 = Child(); //instance creation

  print(child1.calculateIncome());


}
