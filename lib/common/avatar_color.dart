import 'package:flutter/material.dart';

// from https://flatuicolors.com/
const List<Color> _defaultColors = [
  Color(0xff2ecc71), // emerald
  Color(0xff2f3640), // gray
  Color(0xff3498db), // peter river
  Color(0xffe67e22), // carrot
  Color(0xff2c3e50), // midnight blue
  Color(0xFFFF0062), // pink
  Color(0xffe74c3c), // alizarin
];

int _sumChars(String str) {
  int sum = 0;
  for (int i = 0; i < str.length; i++) {
    sum += str.codeUnitAt(i);
  }

  return sum;
}

(Color, Color) getAvatarColorFromName(String name) {
  var chars = _sumChars(name.toLowerCase());
  var bg = _defaultColors[chars % _defaultColors.length];
  var fg = bg.computeLuminance() > 0.5 ? Colors.black : Colors.white;
  return (bg, fg);
}
