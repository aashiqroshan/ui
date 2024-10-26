import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:leave_request/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 1;

  List<Widget> pages = [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        color: Colors.black,
        child: GNav(
          tabs: [
            GButton(
              icon: Icons.add_box,
              text: 'Services',
            ),
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.turn_right,
              text: 'Approvals',
            ),
            GButton(
              icon: Icons.more,
              text: 'More',
            ),
          ],
          selectedIndex: selectedIndex,
          iconSize: 32,
          textSize: 18,
          padding: const EdgeInsets.symmetric(vertical: 5),
          gap: 10,
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          activeColor: Colors.orange,
          color: Colors.white,
          backgroundColor: Colors.black,
          tabBackgroundColor: Colors.black,
        ),
      ),
    );
  }
}
