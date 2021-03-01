import 'package:flutter/material.dart';

class CustomTextView extends StatelessWidget {
  CustomTextView(@required this.text,
      {this.color, font, this.fontSize, this.fontWeight, this.family});

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String family;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: family),
      ),
    );
  }
}
