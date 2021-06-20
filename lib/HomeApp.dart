import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:job_application_project/Loginsec.dart';
import 'package:job_application_project/category.dart';
import 'package:job_application_project/InfoPage.dart';

import 'Navi1.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int selectedpage = 0;
  final _pageOption = [
    NewHome(),
    LoginScreen(),
    Category(),
    //InfoPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOption[selectedpage],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.cyan[200],
          showUnselectedLabels: true,
          onTap: (_index) {
            setState(() {
              selectedpage = _index;
            });
          },
          currentIndex: selectedpage,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                //Ionicons.card_outline,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.grid,
              ),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.person,
              ),
              label: "Profile",
            ),
          ],
        ));
  }
}
