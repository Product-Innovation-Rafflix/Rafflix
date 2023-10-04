import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.amber[800],
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.border_all_outlined),
          icon: Icon(Icons.border_all_outlined),
          label: 'Browse',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.replay_circle_filled),
          icon: Icon(Icons.replay_circle_filled),
          label: 'Exchange',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person_2_outlined),
          icon: Icon(Icons.person_2_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}
