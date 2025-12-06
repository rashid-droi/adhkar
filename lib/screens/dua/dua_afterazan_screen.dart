import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaafterazanScreen extends StatefulWidget {
  const DuaafterazanScreen({super.key});

  @override
  State<DuaafterazanScreen> createState() => _DuaafterazanScreenState();
}

class _DuaafterazanScreenState extends State<DuaafterazanScreen> {
  final ScrollController _scrollController = ScrollController();
  
final String arabicText = ' اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ وَالصَّلَاةِ الْقَائِمَةِ آتِ مُحَمَّدًا الْوَسِيلَةَ وَالْفَضِيلَةَ وَالدَّرَجَةَ الرَّفِيعَةَ وَابْعَثْهُ مَقَامًا مَحْمُودًا الَّذِي وَعَدْتَهُ وَارْزُقْنَا شَفَاعَتَهُ يَوْمَ الْقِيَامَةِ إِنَّكَ لَا تُخْلِفُ الْمِيعَادَ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3E3),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: const Color(0xFFF8F3E3),
              elevation: 0,
              floating: true,
              snap: false,
              pinned: false,
              expandedHeight: 30,
              collapsedHeight: 30,
              toolbarHeight: 30,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.green.shade900),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ];
        },
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFAF2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.green.shade900),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.green.shade700, width: 1),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        arabicText,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.amiriQuran(
                          fontSize: 23,
                          height: 2.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}