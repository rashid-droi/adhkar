import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaNearQabrScreen extends StatefulWidget {
  const DuaNearQabrScreen({super.key});

  @override
  State<DuaNearQabrScreen> createState() => _DuaNearQabrScreenState();
}

class _DuaNearQabrScreenState extends State<DuaNearQabrScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText = 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ۞ اللَّهُمَّ صَلِّي عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ ۞ اللَّهُمَّ أَوْصِلْ مِثْلَ ثَوَابِ مَا قَرَأْنَاهُ هَذِهِ هَدِيَّةً وَاصِلَةً وَرَحْمَةً نَازِلَةً وَبَرَكَةً شَامِلَةً مِنَّا إِلَى حَضْرَةِ رُوحِ نَبِيِّنَا مُحَمَّدٍ ۞ وَإِلَى حَضْرَاتِ آبَائِهِ وَإِخْوَانِهِ مِنَ الْأَنْبِيَاءِ وَالْمُرْسَلِينَ ۞ وَإِلَى حَضْرَاتِ أَزْوَاجِهِ الطَّاهِرَاتِ أُمَّهَاتِ الْمُؤْمِنِينَ ۞ اللَّهُمَّ وَإِلَى حَضْرَاتِ أَوْلِيَاءِ اللهِ تَعَالَى مِنْ مَشَارِقِ الْأَرْضِ إِلَى مَغَارِبِهَا صَغِيرًا وَكَبِيرًا ذَكَرًا وَأُنْثَى كُلِّهِمْ أَجْمَعِينَ ۞ اللَّهُمَّ زِدْ لَهُمْ شَرَفًا عَلَى شَرَفِهِمْ وَفَضْلًا عَلَى فَضْلِهِمْ وَكَرَامَةً عَلَى كَرَامَاتِهِمْ ۞ اللَّهُمَّ أَفِضْ عَلَيْنَا مِنْ فُيُوضَاتِهِمْ وَآمِدَّنَا بِمَدَدِهِمْ وَاحْمِنَا بِحِمَايَتِهِمْ وَانْصُرْنَا بِنُصْرَتِهِمْ يَا رَبَّ الْعَالَمِينَ ۞ اللَّهُمَّ وَإِلَى حَضْرَاتِ آبَائِنَا وَأُمَّهَاتِنَا وَاجْدَادِنَا وَجَدَّاتِنَا وَأَعْمَامِنَا وَعَمَّاتِنَا وَإِخْوَانِنَا وَأَخَوَاتِنَا وَجَمِيعِ مَنْ مَاتُوا مِنَّا ۞ اللَّهُمَّ إِنْ كَانُوا مُحْسِنِينَ فَزِدْ فِي حَسَنَاتِهِمْ وَإِنْ كَانُوا مُسِيئِينَ فَتَجَاوَزْ عَنْ سَيِّئَاتِهِمْ ۞ اللَّهُمَّ أَبْدِلْهُمْ دَارًا خَيْرًا مِنْ دَارِهِمْ وَأَهْلًا خَيْرًا مِنْ أَهْلِهِمْ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِمْ وَجِيرَانًا خَيْرًا مِنْ جِيرَانِهِمْ ۞ اللَّهُمَّ أَدْخِلْهُمُ الْجَنَّةَ وَأَعِذْهُمْ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ النَّارِ ۞ اللَّهُمَّ نَوِّرْ قُبُورَنَا وَقُبُورَهُمْ بِنُورِ الْقُرْآنِ ۞ اللَّهُمَّ زَيِّنْ قُبُورَنَا وَقُبُورَهُمْ بِزِينَةِ الْقُرْآنِ ۞ اللَّهُمَّ وَسِّعْ قُبُورَنَا وَقُبُورَهُمْ بِبَرَكَةِ الْقُرْآنِ ۞ اللَّهُمَّ اجْعَلْ قُبُورَهُمْ رَوْضَةً مِنْ رِيَاضِ الْجَنَّةِ وَلَا تَجْعَلْ قُبُورَهُمْ حُفْرَةً مِنْ حُفَرِ النِّيرَانِ ۞ اَللَّهُمَّ آنِسْ وَحْشَتَهُمْ وَآمِنْ رَوْعَتَهُمْ وَنَفِّسْ كُرْبَتَهُمْ وَنَوِّرْ ضَرِيحَهُمْ وَتَقَبَّلْ حَسَنَاتِهِمْ وَتَجَاوَزْ عَنْ سَيِّئَاتِهِمْ ۞ وَاجْمَعْ بَيْنَنَا وَبَيْنَهُمْ فِي دَارِ النَّعِيمِ ۞ رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ ۞ رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ ۞ آمِينَ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ ۞';

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
                child: RawScrollbar(
                  controller: _scrollController,
                  thumbVisibility: true,
                  thickness: 5.0,
                  radius: const Radius.circular(5.0),
                  thumbColor: Colors.brown.shade400,
                  minThumbLength: 50,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        Text(
                          'دعاء عند القبر',
                          style: GoogleFonts.amiri(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          ),
                          textAlign: TextAlign.center,
                        ),
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