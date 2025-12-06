import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:adhkar_app/screens/home_screen.dart';
import 'package:adhkar_app/screens/quran_screen.dart';
import 'package:adhkar_app/screens/counter_screen.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const QuranScreen(),
    const HomeScreen(),
    const CounterScreen(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: _screens,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 70.0,
        items: <Widget>[
          Icon(FlutterIslamicIcons.quran, size: 30, color: _currentIndex == 0 ? Colors.white : Colors.black),
          Icon(FlutterIslamicIcons.locationMosque, size: 30, color: _currentIndex == 1 ? Colors.white : Colors.black),
          Icon(FlutterIslamicIcons.tasbih3, size: 30, color: _currentIndex == 2 ? Colors.white : Colors.black),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.brown,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.ease,
        animationDuration: const Duration(milliseconds: 700),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
