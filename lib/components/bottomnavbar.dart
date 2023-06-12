import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_layanan_bk/history.dart';
import 'package:mobile_layanan_bk/home.dart';
import 'package:mobile_layanan_bk/profile.dart';
import 'package:mobile_layanan_bk/schedule.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final List<Widget> _pages = [
    const HomePage(),
    const Historypage(),
    const SchedulePage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(156, 135, 184, 246),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            backgroundColor: Color.fromARGB(156, 178, 211, 253),
            color: Color.fromARGB(255, 255, 255, 255),
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(58, 173, 171, 171),
            gap: 8,
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home_sharp,
                text: 'Home',
              ),
              GButton(
                icon: Icons.history,
                text: 'History',
              ),
              GButton(
                icon: Icons.date_range_outlined,
                text: 'Schedule',
              ),
              GButton(
                icon: Icons.person_2_outlined,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
