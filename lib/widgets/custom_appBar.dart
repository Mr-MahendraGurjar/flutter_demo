import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/constraints/constants.dart';

Widget customAppBar(
    {@required String title,
    @required BuildContext context,
    List<Widget> action,
    bool leading = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColor.blackColor),
    ),
    elevation: 0,
    actions: action,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: AppColor.blackColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
