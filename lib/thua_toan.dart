void main() {
  var x = [26, 5];
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

  // --
}

int calculateB(index, b, y) {
  var result = b[index - 2] - ((b[index - 1]) * (y[index - 1]));
  return result;
}
