import 'package:flutter/material.dart';
import 'package:flutter_demo/constraints/constants.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      color: AppColor.backgroundColor,
    );
  }
}
