import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      height: 60,
      backgroundColor: Colors.transparent,
      color: Colors.black,
      buttonBackgroundColor: Colors.black54,
      animationDuration: const Duration(milliseconds: 600),
      items: const [
        Icon(Icons.menu_book, size: 28, color: Colors.white),
        Icon(Icons.home, size: 28, color: Colors.white),
        Icon(Icons.favorite, size: 28, color: Colors.white),
      ],
      onTap: onTap,
    );
  }
}
