import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonDuaScreen extends StatefulWidget {
  const CommonDuaScreen({super.key});

  @override
  State<CommonDuaScreen> createState() => _CommonDuaScreenState();
}

class _CommonDuaScreenState extends State<CommonDuaScreen> {
  // Unused controllers removed for cleaner code: _scrollController
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final String arabicText =
      'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۞ حَمْدًا يُوَافِي نِعَمَهُ وَيُكَافِئُ مَزِيدَهُ ۞ يَا رَبَّنَا لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ وَعَظِيمِ سُلْطَانِكَ ۞ سُبْحَانَكَ لَا تُحْصِي ثَنَاءًا عَلَيْكَ أَنْتَ كَمَا اثْنَيْتَ عَلَى نَفْسِكَ فَلَكَ الْحَمْدُ حَتَّى تَرْضَى ۞ اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ ۞ اللَّهُمَّ صَلِّ صَلَاةً كَامِلَةً وَسَلَّمْ سَلَامًا تَامًّا عَلَى سَيِّدِنَا مُحَمَّدٍ الَّذِي تَنْحَلُّ بِهِ الْعُقَدُ ۞ وَتَنْفَرِجُ بِهِ الْكُرَبُ ۞ وَتُقْضَى بِهِ الْحَوَائِجُ ۞ وَتُنَالُ بِهِ الرَّغَائِبُ ۞ وَحُسْنُ الْخَوَاتِمِ ۞ وَيُسْتَسْقَى الْغَمَامُ بِوَجْهِهِ الْكَرِيمُ ۞ وَعَلَى آلِهِ وَصَحْبِهِ فِي كُلِّ لَمْحَةٍ وَنَفَسٍ بِعَدَدِ كُلِّ مَعْلُومٍ لَكَ ۞ اللَّهُمَّ أَثِبْنَا مَا قَرَأْنَاهُ مِنَ الْقُرْآنِ الْعَظِيمِ ۞ وَمَا صَلَّيْنَاهُ عَلَى رَسُولِكَ الْكَرِيمُ ۞ وَسَائِرِ مَا قُلْنَا فِي هَذَا الْمَجْلِسِ الْمُعَظَّمْ ۞ وَأَوْصِلْ مِثْلَ ذَلِكَ إِلَى حَضْرَةِ سَيِّدِنَا وَهَادِينَا وَمُرْشِدِنَا وَمُنْجِينَا وَمُصْطَفَيْنَا مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ۞ وَإِلَى حَضْرَاتِ آبَائِهِ وَإِخْوَانِهِ مِنَ الْأَنْبِيَاءِ وَالْمُرْسَلِينَ ۞ وَإِلَى حَضْرَاتِ أَزْوَاجِهِ الطَّاهِرَاتِ أُمَّهَاتِ الْمُؤْمِنِينَ ۞ وَإِلَى حَضْرَاتِ أَصْحَابِهِ الْبَدْرِيِّينَ وَالْأَحْدِيِّينَ وَالْحُدَيْبِيِّينَ وَسَائِرِ الصَّحَابَةِ كُلِّهِمْ ۞ أَجْمَعِينَ وَإِلَى حَضْرَةِ سَيِّدِنَا سَيِّدِ الْقَوْمِ نَبِيِّ اللَّهِ الْخَضِرْ عَلَيْهِ الصَّلَاةُ وَالسَّلَامُ ۞ وَإِلَى حَضْرَةِ شَيْخِنَا وَشَيْخِ مَشَائِخِنَا وَقُطْبِنَا قُطْبِ الْأَقْطَابِ غَوْثِ الْأَعْظَمُ مُحْيِي الدِّينِ عَبْدِ الْقَادِرِ الْجِيانِي قَدَّسَ اللَّهُ سِرَّهُ الْعَزِيزُ ۞ وَإِلَى حَضْرَةِ شَيْخِنَا سُلْطَانِ الْعَارِفِينَ السَّيِّدِ الشَّيْخِ أَحْمَدَ الْكَبِيرِ الرِّفَاعِي قَدَّسَ اللَّهُ سِرَّهُ الْعَزِيزُ ۞ وَإِلى حَضْرَةِ شَيْخِنَا قُطْبٍ الْأَوْلِيَاءِ أَبِي الْحَسَنِ عَلَى الشَّاذُلِيَّ قَدَّسَ اللَّهُ سِرَّهُ الْعَزِيزُ ۞ وَإِلَى حَضْرَةِ شَيْخِنَا خَاجًا مُعِينِ الدِّينِ الْجِشْتِي الْأَجْمِيرِي قَدَّسَ اللَّهُ سِرَّهُ الْعَزِيزُ ۞ وَإِلَى حَضْرَاتِ جَمِيعِ أَوْلِيَاءِ اللَّهِ تَعَالَى مِنْ مَشَارِقِ الْأَرْضِ وَمَغَارِبِهَا صَغِيرًا وَكَبِيرًا ذَكَرًا وَأُنْثَى كُلِّهِمْ أَجْمَعِينَ ۞ اللَّهُمَّ زِدْلَهُمْ فَضْلًا عَلَى فَضْلِهِمْ وَشَرَفًا عَلَى شَرَفِهِمْ وَعِرًّا عَلَى عِزِّهِمْ وَكَرَمَةً عَلَى كَرَامَاتِهِمْ وَأَعِدْ عَلَيْنَا مِنْ فُيُوضَاتِهِمْ وَأَسْرَارِهِمْ وَأَنْوَارِهِمْ وَعُلُومِهِمْ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ ۞ اللَّهُمَّ بِحُقُوقِهِمْ وَأَسْرَارِهِمْ حَصِّلْ مُرَادَنَا يَا مُحَصِّلَ الْمُرَادَاتُ ۞ وَاشْفِنَا وَاشْفِ مَرْضَانَا يَا شَافِيَ الْمَرْضَى ۞ وَاقْضِ حَوَائِجَنَا يَا قَاضِيَ الْحَاجَاتْ ۞ اللَّهُمَّ اجْعَلْ قُبُورَنَا وَقُبُورَهُمْ رَوْضَةً مِنْ رِيَاضِ الْجَنَّةِ ۞ وَلَا تَجْعَلْ قُبُورَنَا حُفْرَةً مِنْ حُفَرٍ النِّيرَانُ ۞ اللَّهُمَّ وَفِّقْنَا حَجَّ بَيْتِكَ الْحَرَمْ ۞ وَزِيَارَةَ قَبْرِ النَّبِيِّ الْمُصْطَفَى مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ۞ مَعَ الصِّحَّةِ وَالْعَافِيَةِ وَالْهِدَايَةِ يَا رَبَّ الْعَالَمِينَ ۞ اللَّهُمَّ بَارِكْ لَنَا فِي جَمِيعِ أُمُورِنَا خُصُوصًا فِي أَمْرِنَا هَذَا يَا رَبَّ الْعَالَمِينَ ۞ رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارُ ۞ رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ ۞ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ ۞ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ';

  // Split the text into 4 parts
  late final List<String> textParts;

  @override
  void initState() {
    super.initState();
    _splitText();
  }

  void _splitText() {
    final partLength = (arabicText.length / 3).ceil();
    textParts = [];

    int startIndex = 0;
    for (int i = 0; i < 3; i++) {
      int endIndex = startIndex + partLength;
      if (endIndex > arabicText.length) {
        endIndex = arabicText.length;
      }
      textParts.add(arabicText.substring(startIndex, endIndex));
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
                              fontSize: 19,
                              height: 2,
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