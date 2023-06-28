main() {
  List<int> list = [1, 2, 3, 4];

  Iterable<int> iterable = [5, 6, 7, 8];

  print(iterable.join(''));

  String phrase = 'hj,sdhi,sdijisd';

  print(phrase.substring(8));
  print(phrase.indexOf('s'));

  Map<String, dynamic> map = {
    'id': 1,
    'name': 'xyz',
    'class': 12,
  };

  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }

  print('--For--');
  for (int i = 0; i < iterable.length; i++) {
    print(iterable.toList()[i]);
  }

  print('--For Each--');
  iterable.forEach((element) {
    element = element + 10;
    print(element);
  });

  print('--Iter Map--');
  iterable.map((element) {
    //BL wont work
    element = element + 10;
  });
  print('iterable: $iterable');

  print('--For in--');
  for (String key in map.keys) {
    print(map[key]);
  }

  print('--For--');
  for (int i = 0; i < map.length; i++) {
    Iterable keys = map.keys;
    print(map[map.keys.toList()[i]]);
  }
}
