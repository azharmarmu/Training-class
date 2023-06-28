void main() {
  int admissionAge = 17; //input

  switch (admissionAge) {
    case 17:
      print('Consider based on recommendation');
      break;
    case 18:
      print('Applicable');
      break;

    default:
      print('Not applicable');
  }

  if (admissionAge == 17) {
    print('Consider based on recommendation');
  } else if (admissionAge == 18) {
    print('Applicable');
  } else {
    print('Not applicable');
  }

  int age = 12;
  if (age >= 18) {
    print('Applicable to vote');
  } else {
    print('Not applicable');
  }

  age >= 18 ? print('Applicable to vote') 
  : print('Not applicable');
}
