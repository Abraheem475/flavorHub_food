import 'package:flavorhub_food_app/home_screen.dart';
import 'package:flavorhub_food_app/menu_items.dart';
import 'package:flavorhub_food_app/profile_screen.dart';
import 'package:flavorhub_food_app/search_screen.dart';
import 'package:flutter/material.dart';

class HomeMenuScreen extends StatefulWidget {
  const HomeMenuScreen({super.key});

  @override
  State<HomeMenuScreen> createState() => _HomeMenuScreenState();
}

class _HomeMenuScreenState extends State<HomeMenuScreen> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    MenuItemScreen(),
    ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _navigateBottomBar,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffFE3D58),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.white,
                ),
                label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: "Profile"),
          ]),
    );
  }
}
