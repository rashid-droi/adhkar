import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThasbihScreen extends StatelessWidget {
  const ThasbihScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasbih',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: const Color(0xFFE9E5DC),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFE9E5DC),
      body: Center(
        child: Text(
          'Tasbih Counter',
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.black87),
        ),
      ),
    );
  }
}
