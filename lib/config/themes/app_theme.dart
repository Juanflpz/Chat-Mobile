import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// SE UTILIZA _ PARA HACERLOS PRIVADOS
const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}) //simplemente instancia un valor por defecto si no se pasa nada
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Colors must be between 0 and ${_colorThemes.length - 1}");
  //tipo de dato que espera theme
  ThemeData theme() {
    return ThemeData(
      //textTheme: GoogleFonts.amiri(),
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]
        );
  }
}
