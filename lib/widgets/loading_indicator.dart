import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showProgress({@required BuildContext context}) {
  showDialog(
      context: context,
      builder: (context) => CupertinoActivityIndicator(
            radius: 20,
          ));
}
