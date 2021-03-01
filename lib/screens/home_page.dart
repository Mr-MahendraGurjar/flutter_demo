import 'package:flutter/material.dart';
import 'package:flutter_demo/constraints/constants.dart';
import 'package:flutter_demo/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_demo/screens/bottom_tabs/home_tab.dart';
import 'package:flutter_demo/screens/bottom_tabs/profile_tab.dart';
import 'package:flutter_demo/screens/bottom_tabs/search_tab.dart';
import 'package:flutter_demo/screens/drawer/my_drawer.dart';
import 'package:flutter_demo/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  var currentTab = [
    HomeTab(),
    SearchTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: MyDrawer(),
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          centerTitle: true,
          title: CustomTextView(
            'Whiz courses'.toUpperCase(),
            color: AppColor.white,
          ),
          leading: GestureDetector(
            onTap: () {
              _key.currentState.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.white.withAlpha(35),
                      blurRadius: 40,
                    ),
                  ],
                ),
                child: Icon(Icons.menu),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
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
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.add_shopping_cart),
                ),
              ),
            ),
          ],
        ),
        body: currentTab[provider.currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 50,
            backgroundColor: AppColor.backgroundColor,
            currentIndex: provider.currentIndex,
            onTap: (index) {
              provider.currentIndex = index;
            },
            items: [
              BottomNavigationBarItem(
                icon: provider.currentIndex == 0
                    ? Icon(Icons.home_outlined, color: AppColor.selectedTab)
                    : Icon(
                        Icons.home_outlined,
                        color: AppColor.white,
                      ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: provider.currentIndex == 1
                    ? Icon(Icons.search_off_outlined,
                        color: AppColor.selectedTab)
                    : Icon(
                        Icons.search_off_outlined,
                        color: AppColor.white,
                      ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: provider.currentIndex == 2
                    ? Icon(Icons.person, color: AppColor.selectedTab)
                    : Icon(
                        Icons.person,
                        color: AppColor.white,
                      ),
                title: Text(''),
              )
            ],
          ),
        ),
      ),
    );
  }
}
