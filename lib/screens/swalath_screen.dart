import 'swalath/alamu_swalath_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwalathScreen extends StatelessWidget {
  const SwalathScreen({super.key});

  // List of button titles
  final List<String> buttonTitles = const [
    'Alamu Swalath',
    'Aurad Majlis Swalath',
    'Dalailul khairath',
    'Friday Swalath',
    'Munajath',
    'Nariyath Swalath',
    'Swalathu Thwibb',
    'Swalathul Fathih',
    'Swalath Munjiyath',
    'Thaju Swalath',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Swalath',
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: buttonTitles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                if  (buttonTitles [index] == 'Alamu Swalath') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlamuSwalathScreen()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF8B5A2B),
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                side: BorderSide(
                  color: const Color(0xFF8B5A2B).withOpacity(0.2),
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    buttonTitles[index],
                    style: GoogleFonts.amiri(
                      fontSize: 18,
                      color: const Color(0xFF5D4037),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF8B5A2B)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}