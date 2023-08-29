main() {
  String inputString = "mediocre";
  List<String> x = [];
  List<int> key = [23, 5];
  List<int> k = [];
  List<int> kMod = [];
  String result = '';
  for (int i = 0; i < inputString.length; i++) {
    String character = inputString[i];
    x.add(character);
  }
  print("$x");

  Map<String, int> letterToNumber = {
    'a': 0,
    'b': 1,
    'c': 2,
    'd': 3,
    'e': 4,
    'f': 5,
    'g': 6,
    'h': 7,
    'i': 8,
    'j': 9,
    'k': 10,
    'l': 11,
    'm': 12,
    'n': 13,
    'o': 14,
    'p': 15,
    'q': 16,
    'r': 17,
    's': 18,
    't': 19,
    'u': 20,
    'v': 21,
    'w': 22,
    'x': 23,
    'y': 24,
    'z': 25
  };
  Map<int, String> numberToLetter = {
    0: 'a',
    1: 'b',
    2: 'c',
    3: 'd',
    4: 'e',
    5: 'f',
    6: 'g',
    7: 'h',
    8: 'i',
    9: 'j',
    10: 'k',
    11: 'l',
    12: 'm',
    13: 'n',
    14: 'o',
    15: 'p',
    16: 'q',
    17: 'r',
    18: 's',
    19: 't',
    20: 'u',
    21: 'v',
    22: 'w',
    23: 'x',
    24: 'y',
    25: 'z',
  };
  List<int> numbers = [];
  for (var char in inputString.toLowerCase().runes) {
    if (letterToNumber.containsKey(String.fromCharCode(char))) {
      numbers.add(letterToNumber[String.fromCharCode(char)]!);
    }
  }

  print("$numbers");

  for (var a = 0; a < numbers.length; a++) {
    k.add(key[0] * numbers[a] + 3);
  }

  print("$k");

  for (var a = 0; a < k.length; a++) {
    kMod.add(k[a] % 26);
  }
  print("$kMod");
  for (var number in kMod) {
    if (numberToLetter.containsKey(number)) {
      result += numberToLetter[number]!;
    }
  }
  print(result);
}
