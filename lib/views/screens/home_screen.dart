import 'package:flutter/material.dart';
import 'package:real_state_ui_clone/views/pages/favorite_page.dart';
import 'package:real_state_ui_clone/views/pages/home_page.dart';
import 'package:real_state_ui_clone/views/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Image.asset('assets/images/search-icon.png'),
      label: "Explore",
    ),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/heart-icon.png'), label: "Saved"),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/bell-icon.png'), label: "Alerts"),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/person-icon.png'), label: "Profile")
  ];

  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Homepage(),
    FavoritePage(),
    Text("Notifications page"),
    Text("Profile Page")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
