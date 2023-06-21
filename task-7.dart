abstract class Family{
    String? family;
      void familyMethod(){}
}

abstract class Business{
    String? business;
        void businessMethod();
}

class FatherAndBoss implements Family, Business{
    String? name;
    
      @override
      String? business;
    
      @override
      String? family;
    
      @override
      void businessMethod() {

      }
    
      @override
      void familyMethod() {

      }
}

class Mother {
    String? name;
    String? momFamily;

  void momFamilyMethod(){}
}

class Manager implements Business{
  String? name;
  
  @override
  String? business;
  
  @override
  void businessMethod() {
    // TODO: implement businessMethod
  }

}

//Error bcz multiple inheritenance
class EmployeeSonHusbandAndFather  extends Mother implements FatherAndBoss, Manager{
  @override
  String? business;

  @override
  String? family;

  @override
  void businessMethod() {
    // TODO: implement businessMethod
  }

  @override
  void familyMethod() {
    // TODO: implement familyMethod
  }

}

class Wife {
  String? name;
}

//Error bcz multiple inheritenance
class Son extends EmployeeSonHusbandAndFather, Wife{
  String? name;
}

//Error bcz multiple inheritenance
class Daughter extends EmployeeSonHusbandAndFather, Wife{
  String? name;
}


void main(List<String> args) {
  Manager m1 = Manager();
  m1.family;
}