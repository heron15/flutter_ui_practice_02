import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_practice_02/color.dart';

import 'inkwell_widget.dart';
import 'multiplw_button_one_page.dart';

class NavigationBarModern extends StatefulWidget {
  const NavigationBarModern({super.key});

  @override
  State<NavigationBarModern> createState() => _NavigationBarModernState();
}

class _NavigationBarModernState extends State<NavigationBarModern> {
  int index = 0;
  final screens = [
    MultiButton(),
    InkWellPractice(),
    MultiButton(),
    InkWellPractice(),
  ];

  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (index != 0) {
          setState(() {
            index = 0;
          });
          return false;
        } else {
          final now = DateTime.now();
          if (currentBackPressTime == null ||
              now.difference(currentBackPressTime!) >
                  const Duration(seconds: 2)) {
            currentBackPressTime = now;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Press again to exit'),
              ),
            );
            return false;
          }
          return true;
        }
      },
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 5,
              padding: EdgeInsets.all(10),
              selectedIndex: index,
              onTabChange: (index) {
                setState(() {
                  this.index = index;
                });
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.book,
                  text: 'Book',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Setting',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Favorite',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
