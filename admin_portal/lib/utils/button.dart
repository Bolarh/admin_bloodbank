import 'package:admin_portal/utils/colors.dart';
import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  final String buttonText;
  final double textSize;
  final double containerHeight;
  final double containerWidth;

  const GradientTextButton({
    Key? key,
    required this.buttonText,
    this.textSize = 16.0, 
    this.containerHeight = 40.0, 
    this.containerWidth = 120.0, 
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        gradient: AppColors.linearGradient,
      
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: textSize, color: Colors.white),
        ),
      ),
    );
  }
}
