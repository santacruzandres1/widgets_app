import 'package:flutter/material.dart';

const colorList = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({
     this.selectedColor = 0,
     this.isDarkMode=false,
     })
      : assert(selectedColor >= 0 && selectedColor <= colorList.length-1,
            'selectedColor must be between 0(zero included) and ${colorList.length - 1} ');

  ThemeData getTheme() => ThemeData(
    brightness: isDarkMode?Brightness.dark:Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    )
  );
}
