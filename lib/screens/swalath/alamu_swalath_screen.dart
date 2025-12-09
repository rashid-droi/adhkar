import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StaticQuranPage extends StatefulWidget {
  const StaticQuranPage({super.key});

  @override
  State<StaticQuranPage> createState() => _StaticQuranPageState();
}

class _StaticQuranPageState extends State<StaticQuranPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // The full Arabic text (re-integrated from your previous prompt)
  final String fullArabicText = 'َاَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُرْسَلِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَ مُحَمَّدٍ سَيِّدِ الْمُجَاهِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الشَّاهِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْخآئِفِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِالطَّائِعِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الـتّـآئِبِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْعَابِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْحَامِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الصَّالِحِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الرَّاآِعِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ السَّاجِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْقآئِمِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْقآئِدِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُتَّقِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُسْتَغْفِرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ النَّادِمِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الشَّاآِرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْحَافِظِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الذَّاآِرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْعَاقِلِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُحْسِنِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ اْلاَآْرَمِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُنْذِرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُبَشِّرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الطَّيِّبِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ النَّبِيِّينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ النَّبِيِّ الزَّآِيِّ التَّقِيِّ* اَللَّهُمَّ صَلِّ وَسَلِّمْ نِ الْعَالَمِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ الْمَدَنِيِّ نِ القُرَشِيِّ الْهَاشِمِيِّ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ نِ عَلَي سَيِّدِنَا مُحَمَّدٍ الْعَرَبِيِّ الْمُكَرَّمِ يَوْمَ القِيَامَةِ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ سَيِّدِ اَهْلِ الْجَنَّةِ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ صَاحِبِ الْمَقَامِ الْمَحْمُودِ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ صَاحِبِ الصِّرَاطِ الْمُسْتَقِيمِ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ اَفْضَلِ اْلاَوَّلِينَ وَاْلآخِرِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي سَيِّدِنَا مُحَمَّدٍ وَعَلَى جَمِيعِ الْمَلآئِكَةِ الْمُقَرَّبِينَ*وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي مَنْ سَمَّيْتَهُ ذَاآِرًاوَحَبِيبًا وَمُذَآِّرًا مُحَمَّدٍ رَسُولِ االلهِ* اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلَي مَنْ سَمَّيْتَهُ اَحْمَدًا وَمُحَمَّدًا وَسَيِّدًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ صَابِرًا وَنَبِيا وَمُرَاقِبًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ عَالِيًا وَرَحِيمًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ عَاقِبًا وَآَرِيمًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ عَدْلاً وَجَوَادًا وَمُزَمِّلاً مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ قَاسِمًا وَمَهْدِيا وَهَادِيًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ شَكُورًا وَحَرِيصًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ قآئِمًا وَصَفِيا وَعَبْدَ االلهِ مُحَمَّدِ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ شَاهِدًا بَصِيرًا وَمَهْدِيا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ بَاهِيًا وَنُورًا مَكِّـيا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ شَاآِرًا وَوَلِيا وَنَذِيرًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ بُرْهَانًا صَحِيحًا وَشَرِيفًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُطَاهِرًا وَصَفِيا وَمُخْتَارًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ مُسْلِمًا وَرَؤُفًا مُحَمَّدٍ رَّسُولُ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ مُؤْمِنًا وَحَلِيمًا مُحَمَّدٍ رَّسُولِ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ قآئِمًا وَمَحْمُودًا وَحَامِدًا مُحَمَّدٍ رَّسُولُ االلهِ* اَللَّهُمَّ صَلِّ عَلَي مَنْ سَمَّيْتَهُ مِصْبَاحًا وَ آمِرًا وَنَاهِيًا مُحَمَّدٌ رَّسُولُ االلهِ صَلَّى االلهُ عَلَيْهِ وَعَلَى آلِهِ وَصَحْبِهِ وَاَزْوَاجِهِ وَذُرِّيَّاتِهِ وَاَهْلِ بَيْتِهِ وَعَنْ آُلِّ الصَّحَابَةِ اَجْمَعِينَ آمِينَ*';

  // Split the text into 4 parts
  late final List<String> textParts;

  @override
  void initState() {
    super.initState();
    _splitText();
  }

  void _splitText() {
    final partLength = (fullArabicText.length / 3).ceil();
    textParts = [];

    int startIndex = 0;
    for (int i = 0; i < 3; i++) {
      int endIndex = startIndex + partLength;
      if (endIndex > fullArabicText.length) {
        endIndex = fullArabicText.length;
      }
      textParts.add(fullArabicText.substring(startIndex, endIndex));
      startIndex = endIndex;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Alamu Swalath',
          style: GoogleFonts.anekMalayalam(
            color: borderColor,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: textParts.length, // Use the actual number of parts
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                // Wrap the entire page content in a Scrollbar for desktop/web users
                return Scrollbar(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(16.0, 2, 16.0, 2),
                    child: CustomPaint(
                      painter: BorderPainter(borderColor: borderColor),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        // The text part is wrapped in SingleChildScrollView
                        child: SingleChildScrollView(
                          child: Text(
                            textParts[index],
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.amiri(
                              fontSize: 20,
                              height: 2.2,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Page number indicator
          Container(
            height: 25,
            alignment: Alignment.center,
            child: Text(
              '${_currentPage + 1}',
              style: GoogleFonts.anekMalayalam(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: borderColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// --- CustomPainter for the Decorative Border ---
class BorderPainter extends CustomPainter {
  final Color borderColor;

  BorderPainter({required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor.withOpacity(0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    // Draw the main rectangular border
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    // Draw an inner border with a slight offset
    final innerPaint = Paint()
      ..color = borderColor.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    final innerRect = Rect.fromLTWH(4, 4, size.width - 8, size.height - 8);
    canvas.drawRect(innerRect, innerPaint);

    // Draw lines to mimic the floral pattern on the sides (simplified)
    for (double i = 10; i < size.height - 10; i += 50) {
      canvas.drawLine(Offset(0, i), Offset(8, i + 8), innerPaint);
      canvas.drawLine(Offset(size.width, i), Offset(size.width - 8, i + 8), innerPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}