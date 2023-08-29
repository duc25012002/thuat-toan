void main() {
  List<int> listA = [5, 11];
  List<int> listB = [2, 9];
  
  var temp = listA[0];
  var ketQuaMod;

  var detK = listA[0] * listB[1] - listB[0] * listA[1];
  print(detK);

  listA[0] = listB[1];
  listA[1] = listA[1] * -1;

  listB[0] = listB[0] * -1;
  listB[1] = temp;

  print('$listA');
  print('$listB');

  //----------------------------------------------------------------

  var x = [26, detK];
  var b = [0, 1];
  var y = [0];

  int newX = 0;
  int newY = 0;
  int index = 2;

  while (true) {
    newX = (x[x.length - 2] % x[x.length - 1]);
    newY = (x[x.length - 2] ~/ x[x.length - 1]);

    if (newX == 0) {
      break;
    }

    x.add(newX);
    y.add(newY);

    b.add(calculateB(index, b, y));
    index++;
  }
  print('--------------------------------------------------------');
  // in mảng
  for (var i in x) {
    print(i);
  }
  print('--------------------------------------------------------');
  for (var i in b) {
    print(i);
  }
  print('--------------------------------------------------------');
  for (var i in y) {
    print(i);
  }
  print('--------------------------------------------------------');

  if (b[b.length - 1] < 0) {
    ketQuaMod = 26 + b[b.length - 1];
    print(ketQuaMod);
  } else {
    ketQuaMod = b[b.length - 1];
  }
  print('--------------------------------------------------------');
  for (int i = 0; i < listA.length; i++) {
    listA[i] = (ketQuaMod * listA[i]) % 26;
    listB[i] = (ketQuaMod * listB[i]) % 26;
  }
  print('$listA');
  print('$listB');
  print('--------------------------------------------------------');
}

calculateB(index, b, y) {
  var result = b[index - 2] - ((b[index - 1]) * (y[index - 1]));
  return result;
}
