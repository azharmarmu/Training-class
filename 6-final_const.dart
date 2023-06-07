void main(List<String> args) {
  
  print('Arguments: $args');

  int a = int.parse(args[0]);
  int b = int.parse(args[1]);

  String name = ['a','b'].toString(); 

  final finalPI = functionPI(); // no error runtime

  const pi = 3.14; //direct or const
  const constPI = pi;// cannot handle runTime

  // cannot be reAssigned

}

double functionPI() {
  return 22 / 7;
}
