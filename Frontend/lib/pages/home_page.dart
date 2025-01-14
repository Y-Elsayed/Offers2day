// Packages
import 'package:flutter/material.dart';

// Files
import 'home_pages/home.dart';
import 'home_pages/favorites.dart';
import 'home_pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The index of the bottom navigation icon tapped
  int _selectedIndex = 0;

  // A list of pages to navigate to from the bottom
  // navigation bar
  final List<Widget> _pages = [
    const Home(),
    const Favorites(),
    const Profile(),
  ];

  // A method that changes the index to the tapped icon's
  // index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFF5F5F5),
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.black,
        items: const [
          // Home
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                //color: Color.fromRGBO(255, 218, 185, 1),
                size: 30,
              ),
              label: "Home"),

          // Menu
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                //color: Colors.red,
                size: 29,
              ),
              label: "Favorites"),

          // Profile
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                //color: Color.fromRGBO(174, 217, 224, 1),
                size: 30,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
