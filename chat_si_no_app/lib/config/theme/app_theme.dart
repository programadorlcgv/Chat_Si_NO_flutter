import 'package:flutter/material.dart';

const Color customColor = Color.fromARGB(255, 176, 0, 189);

const List<Color> colorThemes = [
customColor,
Colors.blue,
Colors.yellow,
Colors.green,
Colors.red,
Colors.brown,
];

class AppTheme {

  final int selectColor;

// controlamos el error con assert
  AppTheme({required this.selectColor}): assert (selectColor >= 0 && selectColor < colorThemes.length, "El selectedColor debe estar entre 0 y ${colorThemes.length -1}");



  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorThemes[selectColor],
    );
  }

}