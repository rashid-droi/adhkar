import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Note: ScrollablePositionedList is not used in the final version,
// but kept since it was in the original imports.

class DuaAlKarbScreen extends StatefulWidget {
  const DuaAlKarbScreen({super.key});

  @override
  State<DuaAlKarbScreen> createState() => _DuaAlKarbScreenState();
}

class _DuaAlKarbScreenState extends State<DuaAlKarbScreen> {
  // Use ItemScrollController if you decide to switch to ScrollablePositionedList
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText = 'اللَّهُمَّ صَلِّ وَسَلَّمْ وَبَارِكْ عَلَى رَسُولِكَ سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ وَصَحْبِهِ وَأَوْلَادِهِ وَأَزْوَاجِهِ الطَّاهِرَاتِ أُمَّهَاتِ الْمُؤْمِنِينَ وَذُرِّيَّاتِهِ وَأَهْلِ بَيْتِهِ كَمَا صَلَّيْتَ وَسَلَّمْتَ وَبَارَكْتَ عَلَى سَيِّدِنَا إِبْرَاهِيمَ وَعَلَى آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْكَرِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَالْأَرْضِ وَمَا بَيْنَهُمَا وَرَبُّ الْعَرْشِ الْكَرِيمِ ۞ لَا إِلَهَ إِلَّا اللهُ الْعَظِيمُ الْحَلِيمُ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ الْحَلِيمُ الْكَرِيمُ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ ۞ لَا إِلَهَ إِلَّا اللهُ الْحَلِيمُ الْكَرِيمُ ۞ سُبْحَانَ اللَّهِ وَتَبَارَكَ اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۞ وَحَسْبِيَ اللهُ وَنِعْمَ الْوَكِيلُ ۞ اللَّهُ رَبِّي لَا أُشْرِكْ بِهِ شَيْئًا (۳) يَا حَيُّ يَا قَيُّومُ ۞ لَا إِلَهَ إِلَّا اللَّهُ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ ۞ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ ۞ حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ ۞ عَلَى اللهِ تَوَكَّلْنَا قُلِ ادْعُوا اللَّهَ أَوِ ادْعُوا الرَّحْمَنَ أَيًّا مَا تَدْعُوا فَلَهُ الْأَسْمَاءُ الْحُسْنَى وَلَا تَجْهَرْ بِصَلَاتِكَ وَلَا تُخَافِتْ بِهَا وَابْتَغِ بَيْنَ ذَلِكَ سَبِيلًا ۞ وَقُلِ الْحَمْدُ لِلَّهِ الَّذِي لَمْ يَتَّخِذْ وَلَدًا وَلَمْ يَكُنْ لَهُ شَرِيكَ فِي الْمُلْكِ وَلَمْ يَكُنْ لَهُ وَلِيُّ مِنَ الذُّلِّ وَكَبِّرْهُ تَكْبِيرًا بِسْمِ اللهِ تَوَكَّلْتُ عَلَى الْحَيِّ الَّذِي لَا يَمُوتُ (۳) لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۞ اللَّهُمَّ رَحْمَتَكَ أَرْجُوا فَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ وَأَصْلِحْ لِي شَأْنِي كُلَّهُ ۞ لَا إِلَهَ إِلَّا أَنْتَ لَا إِلَهَ إِلَّا اللَّهُ الْحَلِيمُ الْكَرِيمُ ۞ سُبْحَانَ اللهِ رَبِّ السَّمَاوَاتِ السَّبْعِ وَرَبِّ الْعَرْشِ الْعَظِيمِ ۞ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۞ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ عِبَادِكَ حَسْبُنَا اللهُ وَنِعْمَ الْوَكِيلُ ۞ اللَّهُمَّ أَنْتَ رَبِّي أَنَا أَعُوذُ بِكَ مِنْ شَرِّ عِبَادِكَ ۞ حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ ۞ اللَّهُمَّ أَنْتَ رَبِّي أَنَا عَبْدُكَ ابْنُ عَبْدِكَ وَابْنُ آمَتِكَ نَاصِيَتِي بِيَدِكَ مَاضٍ فِيَّ حُكْمُكَ عَدْلٌ فِي قَضَاؤُكَ اَسْئَلُكَ بِكُلِّ اسْمٍ هُوَ لَكَ سَمَّيْتَ بِهِ نَفْسَكَ أَوْ أَنْزَلْتَهُ فِي كِتَابِكَ أَوْ عَلَّمْتَهُ أَحَدًا مِنْ خَلْقِكَ أَوِ اسْتَأْثَرْتَ بِهِ فِي عِلْمِ الْغَيْبِ عِنْدَكَ أَنْ تَجْعَلَ الْقُرْآنَ الْعَظِيمَ رَبِيعَ قَلْبِي وَنُورَ صَدْرِي وَجَلَاءَ حُزْنِي وَذَهَابَ هَمِّي وَغَمِّي ۞ لَا إِلَهَ إِلَّا اللَّهُ الْعَلِيمُ الْحَلِيمُ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ. لَا إِلَهَ إِلَّا اللهُ الْحَلِيمُ الْعَظِيمُ ۞ لَا إِلَهَ إِلَّا هُوَ الْحَلِيمُ الْكَرِيمُ ۞ لَا إِلَهَ إِلَّا هُوَ رَبُّ السَّمَاوَاتِ السَّبْعِ وَرَبُّ الْعَرْشِ الْكَرِيمِ ۞ سُبْحَانَكَ يَا رَحْمَنُ مَا شِئْتَ أَنْ يَكُونَ كَانَ وَمَا لَمْ يَشَأْ لَمْ يَكُنْ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ. أَعُوذُ بِاللَّهِ الَّذِي يُمْسِكُ السَّمَاوَاتِ السَّبْعَ وَمَنْ فِيهِنَّ أَنْ يَقَعْنَ عَلَى الْأَرْضِ إِلَّا بِإِذْنِهِ وَمِنَ الشَّرِّ كُلِّهِ فِي الدُّنْيَا وَالْآخِرَةِ ۞ اللَّهُمَّ آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ ۞ اللَّهُمَّ يَا حَيُّ يَا قَيُّومُ ۞ لَا إِلَهَ إِلَّا أَنْتَ أَسْأَلُكَ أَنْ تُحْيِيَ قَلْبِي ۞ اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ عَبْدِكَ وَرَسُولِكَ النَّبِيِّ الْأُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلِّمْ ۞';

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
                icon: const Icon(Icons.arrow_back, color: Colors.brown),
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
                border: Border.all(color: Colors.brown),
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
                  border: Border.all(color: const Color(0xFFE9E5DC), width: 1),
                ),
                // --- MODIFICATION START: Replacing Scrollbar with RawScrollbar for a custom look ---
                child: RawScrollbar(
                  // Use a ScrollController to link the RawScrollbar and SingleChildScrollView
                  controller: _scrollController, 
                  // Customize thumb size/shape
                  thumbVisibility: true, // This makes the thumb always visible
                  thickness: 5.0, // Smaller thickness
                  radius: const Radius.circular(5.0), // Rounded corners
                  thumbColor: Colors.brown.shade400, // Custom color
                  minThumbLength: 50, // Minimum length of the scrollbar thumb
                  child: SingleChildScrollView(
                    // Pass the same controller to the scrollable widget
                    controller: _scrollController, 
                    child: Column(
                      children: [
                        Text(
                          'دعاء الكرب',
                          style: GoogleFonts.amiri(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        // Add some vertical space
                        const SizedBox(height: 12), 
                        Text(
                          arabicText,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.amiriQuran(
                            fontSize: 22,
                            height: 2.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // --- MODIFICATION END ---
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