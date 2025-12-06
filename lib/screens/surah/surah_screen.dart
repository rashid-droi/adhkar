import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurahScreen extends StatelessWidget {
  final String surahName;
  final int surahNumber;
  final String arabicText;
  final String translation;
  final int verseCount;

  const SurahScreen({
    super.key,
    required this.surahName,
    required this.surahNumber,
    required this.arabicText,
    required this.translation,
    required this.verseCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          surahName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: const Color(0xFFE9E5DC),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.brown),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFE9E5DC),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Bismillah for all Surahs except At-Tawbah
            if (surahNumber != 9)
              Center(
                child: Text(
                  'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
                  style: GoogleFonts.scheherazadeNew(
                    fontSize: 28,
                    color: Colors.brown[800],
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
            const SizedBox(height: 20),
            // Arabic Text
            Text(
              arabicText,
              style: GoogleFonts.scheherazadeNew(
                fontSize: 24,
                height: 2,
              ),
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 30),
            // Translation
            Text(
              translation,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey[800],
                height: 1.6,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),
            // Verse Count
            Text(
              'Number of verses: $verseCount',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.brown[600],
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
