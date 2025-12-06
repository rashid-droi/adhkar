import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KhathmulQuranScreen extends StatefulWidget {
  const KhathmulQuranScreen({super.key});

  @override
  State<KhathmulQuranScreen> createState() => _KhathmulQuranScreenState();
}

class _KhathmulQuranScreenState extends State<KhathmulQuranScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText = 'بِسمِ اللهِ الرَّحْمَنِ الرَّحِيمِ.         \n صَدَقَ اللهُ الْعَلِيُّ الْعَظِيمُ * وَصَدَقَ رَسُولُهُ النَّبِيُّ الْكَرِيمُ * وَنَحْنُ عَلَى ذلِكَ مِنَ الشَّهِدِينَ * رَبَّنَا تَقَبَّلُ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ * اللَّهُمَّ ارْزُقْنَا بِكُلِّ حَرُفٍ مِّنَ الْقُرْآنِ حَلَاوَةً وَبِكُلِّ جُزءٍ مِّنَ الْقُرْآنِ جَزَاءً * اللَّهُمَّ ارْزُقْنَا بِالْأَلْفِ الْفَةٌ وَ بِالْبَاءِ بَرُكَةً وَ بِالتَّاءِ تَوْبَةً وَ بِالثَّاءِ ثَوَابًا وَّ بِالْحِيمِ جَمَالاً وَبِالْحَاءِ حِكْمَةً وَ بِالْخَاءِ خَيْراً وَّ بِالدَّالِ دَلِيلًا وبِالدَّالِ ذَكَاءً وَبِالرَّاءِ رَحْمَةً وَبِالزَّاءِ زَكوةً وَبِالسِّينِ سَعَادَةً وبِالدِّينِ شِفَاءً وَبِالصَّادِ صِدْقًا وَّ بِالضَّادِ ضِيَاءٌ وَ بِالطَّاءِ طَرَاوَةً وبِالظَّاءِ ظَفَرًا وَّ بِالْعَيْنِ عِلْماً وَبِالغَيْنِ غِنِّى وَبِالْفَاءِ فَلَاحًا وَبِالْقَافِ قُرْبَةٌ وَ بِالْكَافِ كَرَامَةً وَ بِاللَّامِ لُطفاً وَبِالْمِيمِ مَوْعِظَةً وَبِالنُّونِ نُورًا وبِالْوَاوِ وُصُلَةٌ وَ بِالْهَاءِ هِدَايَةً وَ بِالْيَاءِ يَقِينًا * اللَّهُمَّ انْفَعْنَا بِالْقُرْآنِ الْعَظِيمِ * وَارْفَعْنَا بِالأيْتِ وَالذِّكْرِ الْحَكِيمِ وَتَقَبَّلَ مِنَّا قِرَآءَ تَنَا وَتَجَاوَزُعَنَّا مَا كَانَ فِي تِلَاوَةِ الْقُرآنِ مِنْ خَطَا أَوْ نِسْيَانٍ أَوْ تَحْرِيفِ كَلِمَةٍ عَن مَّوَاضِعِهَا أَو تَقْدِيمٍ أَوْ تَأخِيرِ أَوْ زِيَادَةٍ أَوْ نُقْصَانٍ أَوْ تَأْوِيل عَلَى غَيْرِ مَا أَنْزَلْتَهُ عَلَيْهِ أَوْ رَيْبٍ أَوْ شَكٍّ أَوْ سُهُوٍّ أَوْ سُوءِ الْحَالِ أَوْ تَعْجِيلٍ عِنْدَ تِلاوَةِ الْقُرْآنِ أَوْ كَسَلٍ أَوْ سُرُعَةٍ أَوْ زَيْغِ لِسَانٍ أَوْ وَقُفٍ بِغَيْرِ وُقُوفٍ أَوْ إِدْغَامٍ بِغَيْرِ مُدْغَمٍ أَوْ إِظْهَارِ بِغَيْرِ بَيَانٍ أَوْ مَدٍّ أَوْ تَشْدِيدٍ أَو هَمْزَةٍ أَوْ حَزْمٍ أَو إِعْرَابٍ بِغَيْرِ مَا كَتَبَهُ أَوْ قِلَّةِ رَغْبَةٍ وَّ رَهْبَةٍ عِنْدَ آيَاتِ الرَّحْمَةِ وَآيَاتِ الْعَذَابِ فَاغْفِرُ لَنَا رَبَّنَا وَاكْتُبْنَا مَعَ الشَّهِدِينَ * اللَّهُمَّ نَوِّرُ قُلُوبَنَا بِالْقُرْآنِ وَزَيِّنُ اَخْلَاقَنَا بِالْقُرْآنِ * وَنَجِّنَا مِنَ النَّارِ بِالْقُرْآنِ وَادْخِلْنَا فِي الْجَنَّةِ بِالْقُرْآنِ اَللَّهُمَّ اجْعَلِ الْقُرْآنَ لَنَا فِي الدُّنْيَا قَرِينًا وَفِي الْقَبْرِ مُونِسًا وَّ عَلَى الصِّرَاطِ نُورًا وَفِي الْجَنَّةِ رَفِيقًا وَّ مِنَ النَّارِ سِتْراً وَحِجَابًا وَ إِلَى الْخَيْرَاتِ كُلِّهَا دَلِيلًا فَا كُتُبْنَا عَلَى التَّمَامِ وَارْزُقْنَا أَدَاءً بِالْقَلْبِ وَاللِّسَانِ وَ حُبِّ الْخَيْرِ وَ السَّعَادَةِ وَالْبَشَارَةِ مِنَ الْإِيْمَانِ * وَصَلَّى اللهُ تَعَالَى عَلَى خَيْرٍ خَلْقِهِ مُحَمَّدٍ مَّظْهَرِ لُطْفِهِ وَنُورِ عَرْشِهِ سَيِّدِنَا مُحَمَّدٍ وَّالِهِ وَاَصْحَابِہٖ اَجْمَعِينَ وَسَلَّمَ تَسْلِيمًا كَثِيرًا كَثِيرًا';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F3E3),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: const Color(0xFFF8F3E3),
                elevation: 0,
                pinned: true,
                expandedHeight: 30,
                collapsedHeight: 30,
                toolbarHeight: 30,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
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
                            'دعاء ختم القرآن',
                            style: GoogleFonts.amiri(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
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
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}