// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nti_flutter/task_2/colors.dart';
import 'package:nti_flutter/task_2/features/home_content.dart';
import 'package:nti_flutter/task_2/features/orders.dart';
import 'package:nti_flutter/task_2/features/profile.dart';
import 'package:nti_flutter/task_2/features/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final screens = {
  'Home': HomeContent(),
  'Search': Search(),
  'Orders': Orders(),
  'Profile': Profile(),
};

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Task2Color.primaryGreen,
        title: Text(screens.keys.elementAt(_currentIndex)),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: screens.values.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationItem(
                index: 0,
                icon: Icons.home,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                }),
            BottomNavigationItem(
                index: 1,
                icon: Icons.search,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                }),
            BottomNavigationItem(
                index: 2,
                icon: Icons.shopify,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                }),
            BottomNavigationItem(
                index: 3,
                icon: Icons.person,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    super.key,
    required this.index,
    required this.icon,
    required this.currentIndex,
    required this.onTap,
  });
  final int index;
  final int currentIndex;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: index == currentIndex ? Task2Color.primaryGreen : Colors.grey,
      ),
    );
  }
}

