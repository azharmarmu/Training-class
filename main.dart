import '15-getter-setter-encapsulation.dart';

void main(List<String> args) {
  Student s1 = Student(id: '01', classs: 11);

  s1.profile();

  s1.id;
  s1.firstName = 'xyz';
  s1.lastName = 'abc';
  print('\n-----------\n');
  s1.profile();
}
