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
    var range = alphaptic.getRange(1, alphaptic.indexOf(s) + 1);
    var ranglength = alphaptic.indexOf(s);
    result.insert(0,
        '${outerSpaceLength(ranglength, alphaptic.indexOf(alphaptic.first))}${alphaptic[0]}${outerSpaceLength(ranglength, alphaptic.indexOf(alphaptic.first))}');
    for (var item in range) {
      result.add(
          '${outerSpaceLength(ranglength, alphaptic.indexOf(item))}$item${inerSpaceLength(alphaptic.indexOf(item))}$item${outerSpaceLength(ranglength, alphaptic.indexOf(item))}');
    }
    result.addAll(List.from(result.reversed.skip(1)));

    return result;
  }
}

String inerSpaceLength(int itemValue) {
  String spaces;
  if (itemValue <= 1) {
    return spaces = List.filled(itemValue, ' ').join();
  } else if (itemValue >= 2) {
    return spaces = List.filled((itemValue + (itemValue - 1)), ' ').join();
  }
  return spaces;
}

String outerSpaceLength(int length, int itemValue) {
  return List.filled(length - itemValue, ' ').join();
}
