import 'package:flutter/material.dart';
import 'package:midterm_project/Other%20Screens/capture.dart';
import 'package:midterm_project/faves.dart';
import 'package:midterm_project/Other%20Screens/home.dart';
import 'package:midterm_project/Other%20Screens/profile.dart';
import 'package:midterm_project/Other%20Screens/search.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _selectedIndex = 0;
   final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
    const Capture(),
    const Favourites(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
  setState(() {
  _selectedIndex = index;
      }
     );
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
    child: _widgetOptions.elementAt(_selectedIndex),
  ),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,
       showSelectedLabels: false,
       showUnselectedLabels: false,
       items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
         ),
          const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
          ),
          BottomNavigationBarItem(
          icon:  Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFF83AF7D), shape: BoxShape.circle),
              padding: const EdgeInsets.all(5),
              child: const Icon(Icons.camera_alt, color: Colors.white),
            ),
          ),
          label: 'Camera',
          ),
         const BottomNavigationBarItem(
           icon: Icon(Icons.favorite),
           label: 'Favourite',
         ),
         const BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: 'Person',
         ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red[500],
      onTap: _onItemTapped,
    ),
    );
  }
}



