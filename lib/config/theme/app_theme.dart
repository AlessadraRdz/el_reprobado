import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Color.fromARGB(255, 31, 245, 24),
  Color.fromARGB(255, 15, 121, 241),
  Color.fromARGB(255, 252, 140, 35),
  Color.fromARGB(255, 220, 255, 23),
  Color.fromARGB(255, 191, 41, 250),
  Color.fromARGB(255, 248, 58, 58),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Solo se encuentra los Colores en un rango de 0 a ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark);// modo oscuro
    );
  }
}
