void main() {
  //while

  print('\n-- While Loop --');
  int loop = 20;

  // while (loop < 5) {
  //   print('While: $loop');
  //   loop = loop + 1;
  // }

  //check condition first
  //if true compile & execute statement until it is false

  // do {
  //   print('Do-While: $loop');
  //   loop++; // loop = loop + 1
  // } while (false);

  //compile & Execute statement first
  //then check condition if it true repeat until false
  //execute atleast even if it is false
  print('\n-- For Loop --');

  for (int loop =0; loop < 10; loop++) {
    print('For: $loop');
  }

  print(loop);
}

// while
// Hello world: 0
// Hello world: 1
// Hello world: 2
// Hello world: 3
// Hello world: 4
