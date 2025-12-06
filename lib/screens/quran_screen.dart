import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'surahs/surah_kahf_screen.dart';
import 'surahs/surah_yaseen_screen.dart';
import 'surah/surah_screen.dart';
import 'surahs/surah_sajda_screen.dart';
import 'surahs/surah_dukhan_screen.dart';
import 'surahs/surah_rahman_screen.dart';
import 'surahs/surah_waqia_screen.dart';
import 'surahs/surah_hashr_screen.dart';
import 'surahs/surah_mulk_screen.dart';


// Helper methods to get surah data
int _getSurahNumber(String title) {
  final surahMap = {
    'Surah Al-Kahf': 18,
    'Surah As-Sajdah': 32,
    'Surah Al-Yaseen': 36,
    'Surah Ad-Dukhan': 44,
    'Surah Ar-Rahman': 55,
    'Surah Al-Waqiah': 56,
    'Surah Al-Hashr': 59,
    'Surah Al-Mulk': 67,
  };
  return surahMap[title] ?? 1;
}

String _getSurahArabicText(String title) {
  return 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ';
}

String _getSurahTranslation(String title) {
  return 'In the name of Allah, the Entirely Merciful, the Especially Merciful.';
}

int _getVerseCount(String title) {
  final verseCountMap = {
    'Surah Al-Kahf': 110,
    'Surah As-Sajdah': 30,
    'Surah Al-Yaseen': 83,
    'Surah Ad-Dukhan': 59,
    'Surah Ar-Rahman': 78,
    'Surah Al-Waqiah': 96,
    'Surah Al-Hashr': 24,
    'Surah Al-Mulk': 30,
  };
  return verseCountMap[title] ?? 7;
}

class _ButtonItem {
  final String title;
  final IconData icon;
  final Color color;

  _ButtonItem({
    required this.title,
    required this.icon,
    required this.color,
  });
}

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ButtonItem> items = [
      _ButtonItem(title: 'Surah Al-Kahf', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah As-Sajdah', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Al-Yaseen', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Ad-Dukhan', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Ar-Rahman', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Al-Waqiah', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Al-Hashr', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Surah Al-Mulk', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
      _ButtonItem(title: 'Ayaths', icon: FlutterIslamicIcons.quran2, color: Colors.brown),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        title: Text(
          'Quran',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: const Color(0xFFE9E5DC),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFE9E5DC),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _AnimatedQuranButton(item: items[index]);
        },
      ),
    );
  }
}

class _AnimatedQuranButton extends StatefulWidget {
  final _ButtonItem item;

  const _AnimatedQuranButton({required this.item});

  @override
  State<_AnimatedQuranButton> createState() => _AnimatedQuranButtonState();
}

class _AnimatedQuranButtonState extends State<_AnimatedQuranButton> {
  double _scale = 1.0;

  void _onTapDown(_) {
    setState(() => _scale = 0.97);
  }

  void _onTapUp(_) {
    setState(() => _scale = 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _scale,
      duration: const Duration(milliseconds: 150),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: InkWell(
          onTapDown: _onTapDown,
          onTapCancel: () => setState(() => _scale = 1.0),
          onTapUp: _onTapUp,
          onTap: () {
            if (widget.item.title == 'Surah Al-Kahf') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahKahfPage()),
              );
            } else if (widget.item.title == 'Surah Al-Yaseen') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahYaseenPage()),
              );
            } else if (widget.item.title == 'Surah As-Sajdah') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahSajdaPage()),
              );
            } else if (widget.item.title == 'Surah Ad-Dukhan') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahDukhanPage()),
              );
            } else if (widget.item.title == 'Surah Ar-Rahman') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahRahmanPage()),
              );
            } else if (widget.item.title == 'Surah Al-Waqiah') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahWaqiaPage()),
              );
            } else if (widget.item.title == 'Surah Al-Hashr') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahHashrPage()),
              );
            } else if (widget.item.title == 'Surah Al-Mulk') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurahMulkPage()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SurahScreen(
                    surahName: widget.item.title,
                    surahNumber: _getSurahNumber(widget.item.title),
                    arabicText: _getSurahArabicText(widget.item.title),
                    translation: _getSurahTranslation(widget.item.title),
                    verseCount: _getVerseCount(widget.item.title),
                  ),
                ),
              );
            }
          },  // ✅ FIXED comma here

          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: widget.item.color.withOpacity(0.3),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    widget.item.icon,
                    color: widget.item.color,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    widget.item.title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.brown),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
