//solution
void main() {
  int firstValue = 0;
  int secondValue = 1;

  int limit = 8; //Jaykumar: getting value through i/p

  print(firstValue); // Print the first value
  print(secondValue);

  int output = secondValue + firstValue;
  print(output);

  for (int i = 2; i < limit; i++) {
    firstValue = secondValue;
    secondValue = output;
    output = secondValue + firstValue;
    print(output);
  }
}
