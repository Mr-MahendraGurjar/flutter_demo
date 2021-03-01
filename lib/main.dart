import 'package:flutter/material.dart';
import 'package:flutter_demo/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_demo/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: HomePage(),
        create: (context) => BottomNavigationBarProvider(),
      ),
    );
  }
}
