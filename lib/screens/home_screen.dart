import 'package:adhkar_app/screens/ratheeb_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adhkar_app/screens/baith_screen.dart';
import 'package:adhkar_app/screens/malappatt_screen.dart';
import 'package:adhkar_app/screens/moulid_screen.dart';
import 'package:adhkar_app/screens/others_screen.dart';
import 'package:adhkar_app/screens/swalath_screen.dart';
import 'package:adhkar_app/screens/thasbih_screen.dart';
import 'package:adhkar_app/screens/dua_screen.dart';
import 'package:adhkar_app/screens/dikr_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  final List<Map<String, dynamic>> menuItems = [];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

    menuItems.addAll([
      {'title': 'Moulid', 'icon': Icons.wb_sunny_outlined,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const MoulidScreen()))},

      {'title': 'Baith', 'icon': Icons.nights_stay_outlined,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const BaithScreen()))},

      {'title': 'Dikr', 'icon': FlutterIslamicIcons.tasbihHand,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const DikrScreen()))},

      {'title': 'Swalath', 'icon': Icons.mosque_outlined,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const SwalathScreen()))},

      {'title': 'Duas', 'icon': FlutterIslamicIcons.prayer,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const DuaScreen()))},

      {'title': 'Majlisunnoor', 'icon': Icons.album_outlined,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const ThasbihScreen()))},

      {'title': 'Malappatt', 'icon': Icons.library_books_rounded,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const MalappattScreen()))},

      {'title': 'Others', 'icon': Icons.more,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const OthersScreen()))},

      {'title': 'Ratheeb', 'icon': FlutterIslamicIcons.lantern,
        'onTap': (context) => Navigator.push(context,
          MaterialPageRoute(builder: (_) => const RatheebScreen()))},
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// ***********************************************
  /// MAIN UI
  /// ***********************************************
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xFFE9E5DC),

        /// ========= APP BAR ==========
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Container(
            color: const Color(0xFFE9E5DC),
            child: _buildHeader(),
          ),
        ),

        /// ========= BODY ==========
        body: SafeArea(
          child: Column(
            children: [
              _buildSearchBar(),
              const SizedBox(height: 30),
              _buildGridSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// ***********************************************
  /// SEARCH BAR WIDGET
  /// ***********************************************
  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
          decoration: InputDecoration(
            hintText: "Search here...",
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey[500],
              fontSize: 13,
            ),
            prefixIcon: const Icon(Icons.search, color: Colors.black54),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 14),
          ),
        ),
      ),
    );
  }

  /// ***********************************************
  /// GRID SECTION
  /// ***********************************************
  Widget _buildGridSection() {
    return Expanded(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: menuItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) =>
                _buildAnimatedMenuItem(context, menuItems[index], index),
          ),
        ),
      ),
    );
  }

  /// ***********************************************
  /// HEADER WIDGET
  /// ***********************************************
  Widget _buildHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        const Icon(Icons.mosque_outlined, size: 40, color: Colors.brown),
        const SizedBox(height: 8),
        Text(
          'Al-Hasnath',
          style: GoogleFonts.poppins(
            color: Colors.black87,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          'Daily Azkar & Duas',
          style: GoogleFonts.poppins(
            color: Colors.grey[700],
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  /// ***********************************************
  /// MENU CARD WITH SCALE ANIMATION
  /// ***********************************************
  Widget _buildAnimatedMenuItem(
      BuildContext context, Map<String, dynamic> item, int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final animationValue = Curves.easeOutBack.transform(
          (index / menuItems.length).clamp(0.0, 1.0) * _controller.value,
        );
        return Transform.scale(
          scale: 0.9 + 0.1 * animationValue,
          child: Opacity(opacity: _controller.value, child: child),
        );
      },
      child: _buildMenuItemCard(context, item),
    );
  }

  Widget _buildMenuItemCard(BuildContext context, Map<String, dynamic> item) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      shadowColor: Colors.black.withOpacity(0.05),
      child: InkWell(
        onTap: () => item['onTap'](context),
        borderRadius: BorderRadius.circular(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item['icon'], color: Colors.brown, size: 28),
            const SizedBox(height: 10),
            Text(
              item['title'],
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

