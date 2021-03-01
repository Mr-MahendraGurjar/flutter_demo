import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {this.color,
      @required this.height,
      @required this.width,
      this.radius,
      this.blurRadius,
      this.shadow_color});

  final double height;
  final double width;
  final double radius;
  final double blurRadius;
  final Color color;
  final Color shadow_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: [
            BoxShadow(
              color: shadow_color,
              blurRadius: 5.0,
            ),
          ]),
      child: Container(),
    );
  }
}
