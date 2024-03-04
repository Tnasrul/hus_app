import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:hus_project/Screen/home/main_page.dart';
import 'package:hus_project/Screen/settings/settings_screen.dart';
import 'package:hus_project/color.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexBottomBar = 0;

  final List<Widget> pages = [
    const MainPage(),
    const MainPage(),
    const MainPage(),
    const MainPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexBottomBar],
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        padding: EdgeInsets.zero,
        currentIndex: indexBottomBar,
        backgroundColor: secondaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: primaryColor,
        height: 72,
        snakeViewColor: primaryColor,
        onTap: (index) => setState(() => indexBottomBar = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              activeIcon: Icon(Iconsax.home),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.building_3),
              activeIcon: Icon(Iconsax.building_3),
              label: 'property'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.data),
              activeIcon: Icon(Iconsax.data),
              label: 'database'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.note_1),
              activeIcon: Icon(Iconsax.note_1),
              label: 'reports'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.setting),
              activeIcon: Icon(Iconsax.setting),
              label: 'settings')
        ],
      ),
    );
  }
}
