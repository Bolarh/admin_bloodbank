import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



TextStyle headerStyle({
  FontWeight fontWeight = FontWeight.bold,
  double fontSize = 12,
  Color color = Colors.black,
}) {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    ),
  );
}

TextStyle header2Style({
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 12,
  Color color = Colors.black,
}) {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    ),
  );
}


