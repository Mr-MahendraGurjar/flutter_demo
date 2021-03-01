import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo/constraints/constants.dart';
import 'package:flutter_demo/widgets/text_widget.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.backgroundColor,
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, top: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: AppColor.backgroundColor,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.white.withAlpha(25),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Icon(Icons.close),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CustomTextView(
                          'whiz launch pad.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        CustomTextView(
                          'about us.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        CustomTextView(
                          'blogs.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        CustomTextView(
                          'support center.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        CustomTextView(
                          'privacy policy.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        CustomTextView(
                          'terms \& condition.'.toUpperCase(),
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        Spacer(),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextView(
                              'facebook'.toUpperCase(),
                              color: AppColor.white,
                              fontSize: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextView(
                              'instagram'.toUpperCase(),
                              color: AppColor.white,
                              fontSize: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextView(
                              'twitter'.toUpperCase(),
                              color: AppColor.white,
                              fontSize: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextView(
                              'youtube'.toUpperCase(),
                              color: AppColor.white,
                              fontSize: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellowAccent[700]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextView(
                          "logout".toUpperCase(),
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.logout,
                          color: AppColor.black,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
