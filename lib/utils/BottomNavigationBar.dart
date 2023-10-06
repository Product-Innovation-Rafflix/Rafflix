import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex; // Add currentIndex as a parameter

  CustomBottomNavigationBar({required this.currentIndex});

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
            isSelected: currentIndex == 0, // Check if this button is selected
          ),
          GestureDetectorButton(
            icon: Icons.category_rounded,
            label: 'Item',
            route: '/item',
            isSelected: currentIndex == 1, // Check if this button is selected
          ),
          // You can add more buttons here with their corresponding indices
          GestureDetectorButton(
            icon: Icons.replay_circle_filled_rounded,
            label: 'exchange',
            route: '/exchange',
            isSelected: currentIndex == 2, // Check if this button is selected
          ),
          GestureDetectorButton(
            icon: Icons.person_2_rounded,
            label: 'profile',
            route: '/profile',
            isSelected: currentIndex == 3, // Check if this button is selected
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

  GestureDetectorButton({
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
      child: Container(
        height: 80.h,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                color: isSelected
                    ? Colors.blue
                    : Colors.black), // Change icon color based on isSelected
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                  color: isSelected
                      ? Colors.blue
                      : Colors.black), // Change text color based on isSelected
            ),
          ],
        ),
      ),
    );
  }
}
