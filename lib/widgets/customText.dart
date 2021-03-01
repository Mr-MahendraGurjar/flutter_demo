import 'package:flutter/material.dart';

Widget customText(
    {@required String text,
    Color color,
    double fontSize,
    FontWeight weight,
    TextAlign align}) {
  return Text(text,
      textAlign: align,
      style: TextStyle(color: color, fontSize: fontSize, fontWeight: weight));
}
