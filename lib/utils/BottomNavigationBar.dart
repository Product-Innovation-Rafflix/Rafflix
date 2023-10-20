// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rafflix/utils/GetStoredCookie.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex; // Add currentIndex as a parameter

  const CustomBottomNavigationBar({super.key, required this.currentIndex});

  @override
  // ignore: library_private_types_in_public_api
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  bool isLoggedIn = false; // Initialize with default value

  @override
  void initState() {
    super.initState();
    checkLoginStatus(); // Check the login status when the widget initializes
  }

  Future<void> checkLoginStatus() async {
    String? storedCookie = await getStoredCookie();
    setState(() {
      isLoggedIn = storedCookie != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetectorButton(
            icon: Icons.home_rounded,
            label: 'Home',
            route: '/',
            isSelected: widget.currentIndex == 0,
          ),
          GestureDetectorButton(
            icon: Icons.category_rounded,
            label: 'Item',
            route: '/item',
            isSelected: widget.currentIndex == 1,
          ),
          GestureDetectorButton(
            icon: Icons.replay_circle_filled_rounded,
            label: 'exchange',
            route: '/exchange',
            isSelected: widget.currentIndex == 2,
          ),
          // Conditionally add the profile button based on the isLoggedIn state
          if (isLoggedIn)
            GestureDetectorButton(
              icon: Icons.person_2_rounded,
              label: 'profile',
              route: '/profile',
              isSelected: widget.currentIndex == 3,
            )
          else
            GestureDetectorButton(
              icon: Icons.login_rounded,
              label: 'sign in',
              route: '/signin', // Route to the sign-in page if not logged in
              isSelected: widget.currentIndex == 3,
            ),
        ],
      ),
    );
  }
}

class GestureDetectorButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;
  final bool isSelected; // Add isSelected as a parameter

  const GestureDetectorButton({
    super.key,
    required this.icon,
    required this.label,
    required this.route,
    required this.isSelected, // Add isSelected as a parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          Navigator.pushNamed(context,
              route); // Navigate to the route if it's not the current route
        }
      },
      child: SizedBox(
        height: 80.h,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                color: isSelected
                    ? const Color(0xFFFBC02D)
                    : Colors.black), // Change icon color based on isSelected
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                  color: isSelected
                      ? const Color(0xFFFBC02D)
                      : Colors.black), // Change text color based on isSelected
            ),
          ],
        ),
      ),
    );
  }
}
