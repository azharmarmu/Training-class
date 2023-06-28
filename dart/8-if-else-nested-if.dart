void main() {
  int age = 22;
  bool isMale = true;

  //For working women, train ticket is waived 75%

  if (age > 4 && age <= 12) {
    print('Take half ticket');
  } else if (age > 12 && age <= 60) {
    if (isMale == false) {
      print('Women concession');
    } else {
      print('Take full ticket');
    }
  } else if (age > 60) {
    print('Get older age previlage');
  } else {
    print('Free');
  }

  print('--End--');
}
