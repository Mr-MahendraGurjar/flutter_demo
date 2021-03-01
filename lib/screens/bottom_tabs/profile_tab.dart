import 'package:flutter/material.dart';
import 'package:flutter_demo/constraints/constants.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      color: AppColor.backgroundColor,
    );
  }
}
