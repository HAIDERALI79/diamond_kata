class Diamond {
  var alphaptic = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];
  List<String> rows(String s) {
    var result = <String>[];
    var charLength = alphaptic.indexOf(s);
    var range = charLength != 0
        ? alphaptic.getRange(0, alphaptic.indexOf(s) + 1)
        : s.split('');
    for (var item in range) {
      result.add(getDiamondRow(charLength, item, alphaptic.indexOf(item)));
    }
    result.addAll(List.from(result.reversed.skip(1)));

    return result;
  }
}

String getDiamondRow(int charLength, String item, int itemValue) {
  String spaces;
  var outerSpaceLength = List.filled((charLength - itemValue), ' ').join();
  if (itemValue == 0) {
    spaces = ('$outerSpaceLength$item$outerSpaceLength');
  } else if (itemValue >= 1) {
    var inerSpaceLength =
        List.filled((itemValue + (itemValue - 1)), ' ').join();
    spaces = ('$outerSpaceLength$item$inerSpaceLength$item$outerSpaceLength');
  }
  return spaces;
}
