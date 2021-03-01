import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static double defaultSize;
  static double screenHeight;
  static double screenWidth;
  static MediaQueryData _mediaQueryData;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = AppConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = AppConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

class Responsive {
  final double _height;
  final double _width;

  Responsive(Size size)
      : _height = size.height / 100,
        _width = size.width / 100;

  double returnHeight(double height) {
    return _height * height;
  }

  double returnWidth(double width) {
    return _width * width;
  }
}

class AppIcons {
  static const base = "lib/src/assets/icons";

  /// PNG Icons
  static const usd_png = "$base/usd.png";

  /// SVG Icons
  static const converter_svg = "$base/converter.svg";
}

class AppImages {
  static const base = "lib/src/assets/images";

  /// JPG Images
  static const india_jpg = "$base/india.jpg";
  static const us_jpg = "$base/us.jpg";
  static const us_3_jpg = "$base/us_3.jpg";
}

class ConstantsNumber {
  static int initialRadiusInMeter = 25;
}

class AppColor {
  static const Color primary = Color(0xff9f9f9f);
  static const Color secondary = Color(0xffffffff);
  static const Color tertiary = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color backgroundColor = Color(0xff1a1a1a);
  static const Color selectedTab = Color(0xff836213);
  static const Color unSelectedTab = Color(0xff181818);
  static const Color borderColor = Color(0xffeeeeee);
  static Color currencySearchIconCplor = Color(0XFF00A2DC);
  static const Color redColor = Color.fromRGBO(227, 69, 82, 1);
  static const Color blueColor = Color.fromRGBO(30, 55, 105, 1);
  static const Color secondaryBlue = Color.fromRGBO(38, 57, 153, 1);
  static const Color blackColor = Color.fromRGBO(14, 18, 38, 1);
  static const Color goldColor = Color.fromRGBO(255, 229, 181, 1);
  static const Color lightSkyBlueColor = Color.fromRGBO(234, 252, 255, 1);
  static const Color greenColor = Color.fromRGBO(0, 198, 168, 1);
  static const Color greyColor = Color.fromRGBO(207, 208, 212, 1);
  static const Color subBlack = Color.fromRGBO(14, 18, 38, 0.6);
  static const Color skyBlueColor = Color.fromRGBO(0, 162, 220, 1);
  static const Color timerColor = Color.fromRGBO(0, 166, 152, 0.2);
  static const Color errorColor = Color.fromRGBO(255, 240, 240, 1);
  static const Color iconCircleBackgroundColor =
      Color.fromRGBO(242, 252, 251, 1);
  static const Color iconEnableColor = Color.fromRGBO(1, 152, 140, 1);
  static Color textColor = Color(0XFF0E1226);
  static final Color transparent = Colors.transparent;
}

/// Size for App & sorting by numerical value.
class AppSize {
  static const tiny = 9.0;
  static const subTitle = 11.0;
  static const subContent = 12.0;
  static const content = 14.0;
  static const subHeading = 16.0;
  static const heading = 20.0;
  static const superHeading = 25.0;
  static const title = 18.0;

  static const avatarSize = 40.0;
  static const avatarSizeLarge = 50.0;
  static const avatarSizeXL = 60.0;

  static const statusBarHeight = 24.0;
  static const appBarHeight = 50.0;
}

/// Padding for App & sorting by name alphabet.
class AppPadding {
  EdgeInsetsGeometry scaffoldPadding = const EdgeInsets.all(20.0);
  EdgeInsetsGeometry scaffoldPaddingHorizontal =
      const EdgeInsets.symmetric(horizontal: 20.0);
  EdgeInsetsGeometry scaffoldPaddingVertical =
      const EdgeInsets.symmetric(vertical: 20.0);
}

/// Margin for App & sorting by name alphabet.
class AppMargin {
  EdgeInsetsGeometry scaffoldMargin = const EdgeInsets.all(20.0);
  EdgeInsetsGeometry scaffoldMarginHorizontal =
      const EdgeInsets.symmetric(horizontal: 20.0);
  EdgeInsetsGeometry scaffoldMarginVertical =
      const EdgeInsets.symmetric(vertical: 20.0);
}

/// Route for App & sorting by name alphabet.
class AppRoute {
  static const INITIAL_ROUTE = '/';
}

/// Style for App & sorting by name alphabet.
class AppStyle {
  static TextStyle errorStyle = TextStyle(
      fontSize: AppSize.subTitle,
      color: Colors.red,
      fontWeight: FontWeight.w400);
  static TextStyle hintStyle = TextStyle(
      fontSize: AppSize.content,
      color: Colors.grey[800],
      fontWeight: FontWeight.w400);
  static TextStyle labelStyle =
      TextStyle(fontSize: AppSize.content, fontWeight: FontWeight.w400);
  static TextStyle textStyle = TextStyle(
      fontSize: AppSize.content,
      color: AppColor.white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      wordSpacing: 0.5);
  static TextStyle textStyleOutLine = TextStyle(
      fontSize: AppSize.content,
      color: AppColor.white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      wordSpacing: 0.5);
}

/// Url for App & sorting by name alphabet.
class AppUrl {
  static var baseUrl = 'http://192.168.1.15:9003';
}

/// String for App & sorting by alphabet.
class Constants {
  static String en = 'En';
  static String hi = 'हिं';
  static String or = 'ଓ';
  static String ta = 'ସ';
}
