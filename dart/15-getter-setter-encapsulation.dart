class Student {
  //There are two types of access modifier: private(int _a;) public(int a;)
  //If u are using '_' as first character then that varibale is private

/*

Encapsulation is an OOPs concept 
that binds together the data and functions that manipulate the data, 
and that keeps both safe from outside interference and misuse.

 */
  //properties or Data members
  final String id;
  final int classs;
  String? _firstName; //private
  String? _lastName; //private

  //constructor
  Student({
    required this.id,
    required this.classs,
    //required this._firstName, -> private variable cannot be assigned through constructor
  });

  //setter
  set firstName(String name) => this._firstName = 'Hello$name';
  set lastName(String name) => this._lastName = name;

  //getter
  String get getFirstName => _firstName ?? '-';

  //member functions or methods
  void profile() {
    print(
        'Student Details\nID: $id\t\tclass: $classs\nFirst name: $_firstName\t\Last name: $_lastName');
  }

  void _function() {}
}
