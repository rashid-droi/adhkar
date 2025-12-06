import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManqoosMoulidScreen extends StatelessWidget {
  const ManqoosMoulidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manqoos Moulid',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Content
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Arabic Text
                  Text(
                    'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
                    style: GoogleFonts.amiri(
                      fontSize: 22,
                      height: 2.0,
                      color: const Color(0xFF5D4037),
                    ),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 20),
                  
                  // English Translation
                  Text(
                    'In the name of Allah, the Most Gracious, the Most Merciful',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xFF5D4037).withOpacity(0.8),
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  
                  // Moulid Content
                  _buildMoulidSection(
                    arabic: 'اللَّهُمَّ صَلِّ وَسَلِّمْ عَلَىٰ نَبِيِّنَا مُحَمَّدٍ',
                    english: 'O Allah, send blessings and peace upon our Prophet Muhammad',
                  ),
                  const SizedBox(height: 16),
                  
                  _buildMoulidSection(
                    arabic: 'وَآلِهِ وَأَصْحَابِهِ أَجْمَعِينَ',
                    english: 'and upon his family and all his companions',
                  ),
                  const SizedBox(height: 20),
                  
                  // Additional Content
                  Text(
                    'Manqoos Moulid is a blessed gathering to celebrate the birth and life of the Prophet Muhammad (peace be upon him). It is a time for remembrance, sending blessings upon the Prophet, and reflecting on his noble character and teachings.',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: const Color(0xFF5D4037),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            
            // Favorite Button
            ElevatedButton.icon(
              onPressed: () {
                // Add to favorites functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to Favorites')),
                );
              },
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              label: Text(
                'Add to Favorites',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8B5A2B),
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildMoulidSection({required String arabic, required String english}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Arabic Text
        Text(
          arabic,
          style: GoogleFonts.amiri(
            fontSize: 22,
            height: 2.0,
            color: const Color(0xFF8B5A2B),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 8),
        
        // English Translation
        Text(
          english,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: const Color(0xFF5D4037).withOpacity(0.9),
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}