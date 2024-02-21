import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_practice_02/color.dart';

class NavigationBarModern extends StatefulWidget {
  const NavigationBarModern({super.key});

  @override
  State<NavigationBarModern> createState() => _NavigationBarModernState();
}

class _NavigationBarModernState extends State<NavigationBarModern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.all(16),
            onTabChange: (index) {
              
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
    );
  }
}
