import 'package:final_project/app_screens/profile.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'home1.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({
    super.key,
  });
  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomePage(), 'title': 'Home'},
    {'page': const CartScreen(), 'title': 'Cart'},
    {'page': const ProfileScreen(), 'title': 'Profile'},
  ];
  int _selectedPageIndex = 0;
  index(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 15,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black26,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedPageIndex,
        onTap: index,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
