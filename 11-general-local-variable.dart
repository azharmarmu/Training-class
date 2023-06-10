void main(List<String> args) {
  int variable = 10;

  {
    variable = 15;
    print('local1: $variable');
  }

  {
    int variable = 25;
    print('local2: $variable');
  }

  print('general: $variable');
}
