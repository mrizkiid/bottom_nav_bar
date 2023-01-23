// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bottom_nav_bar/page/homepage.dart';
import 'package:bottom_nav_bar/page/messaggepages.dart';
import 'package:bottom_nav_bar/page/profilepage.dart';
import 'package:bottom_nav_bar/page/settingspage.dart';
import 'package:flutter/material.dart';

class Tampilan extends StatefulWidget {
  const Tampilan({super.key});

  @override
  State<Tampilan> createState() => _TampilanState();
}

class _TampilanState extends State<Tampilan> {
  // const Tampilan({super.key});
  int _selectedIndex = 0;

  void onTapIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    MessengerPages(),
    SettingsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Nav Bar',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (value) => onTapIndex(value),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ]),
    );
  }
}
