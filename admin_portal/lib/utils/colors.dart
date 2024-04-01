import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 209, 206, 211);
  static const Color secondaryColor = Color.fromARGB(255, 228, 224, 231);
  static const Color accentColor = Color(0xFFE91E63); 
  static const Color backgroundColor = Color.fromARGB(255, 247, 245, 248);
  static const Color textColor = Color(0xFF333333); 
  static const Gradient linearGradient = LinearGradient(
          colors: [Color.fromARGB(255, 127, 20, 156), Color(0xFFD500F9)], 
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        );
  static const Color borderColor =Color.fromARGB(255, 109, 18, 134); 
}
