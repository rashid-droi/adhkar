import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HizbAlnasrScreen extends StatefulWidget {
  const HizbAlnasrScreen({super.key});

  @override
  State<HizbAlnasrScreen> createState() => _HizbAlnasrScreenState();
}

class _HizbAlnasrScreenState extends State<HizbAlnasrScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText1 = 'اللَّهُمَّ بِسَطْوَةِ جَبَرُوتِ قَهْرِكَ وَبِسُرْعَةِ إِغَاثَةِ نَصْرِكَ وَبِغِيرَتِكَ لِإِنْتِهَاكِ حُرُمَاتِكَ وَبِحِمَايَتِكَ لِمَنِ احْتَمَى بِآيَاتِكَ نَسْأَلُكَ يَا الله (۳) يَا سَمِيعُ يَا مُجِيبُ يَا قَرِيبُ يَا سَرِيعُ يَا مُنْتَقِمُ يَا قَهَارُ يَا شَدِيدَ الْبَطْشِ يَا مَنْ لَا يُعْجِزُهُ قَهْرُ الْجَبَابِرَةِ وَلَا يَعْظُمُ عَلَيْهِ هَلَاكُ الْمُتَمَرِّدِينَ مِنَ الْمُلُوكِ الْأَكَاسِرَةِ، أَنْ تَجْعَلَ كَيْدَ مَنْ كَادَنَا فِي نَحْرِهِ وَمَكْرَ مَنْ مَكَرَ بِنَا عَائِدًا إِلَيْهِ وَحُفْرَةَ مَنْ حَفَرَ لَنَا وَاقِعًا فِيهَا وَمَنْ نَصَبَ لَنَا شَبَكَةَ الْخِدَاعِ اجْعَلْهُ يَا سَيِّدِي مُسَاقًا إِلَيْهَا وَمُصَادًا فِيهَا وَأَسِيرًا لَدَيْهَا، اللَّهُمَّ بِحَقِّ (كهيعص) اِكْفِنَاهُمَ الْعِدَا وَلَقِهِمُ الرِّدَى وَاجْعَلْهُمْ لِكُلِّ حَبِيبٍ فِدًا، وَسَلِّطْ عَلَيْهِمْ عَاجِلَ النَّقَمِ فِي الْيَوْمِ وَالغَدَاءِ اللَّهُمَّ بَدِدْ شَمْلَهُمْ اللَّهُمَّ فَرِقْ جَمْعَهُمْ وَأَقْلِلْ عَدَدَهُمْ اللَّهُمَّ فُلَ حَدَّهُمْ اللَّهُمَّ اجْعَلِ الدَائِرَةَ عَلَيْهِمْ اللَّهُمَّ أَوْصِلِ الْعَذَابَ إِلَيْهِمْ اللَّهُمَّ أَخْرِجْهُمْ عَنْ دَائِرَةِ الْحِلْمِ وَاللُّطْفِ وَاسْلُبْهُمْ مَدَدَ الْإِمْهَالِ وَغُلَّ أَيْدِيهِمْ وَارْبِطْ عَلَى قُلُوبِهِمْ وَلَا تُبَلِّغْهُمْ الْآمَالَ اللَّهُمَّ مَزِّقْهُمْ كُلَّ مُمَزَّقٍ مَزَقْتَهُ لِأَعْدَائِكَ، انْتِصَارًا لِأَنْبِيَائِكَ وَرُسُلِكَ وَأَوْلِيَائِكَ، اللَّهُمَّ انْتَصِرْ لَنَا انْتِصَارَكَ لِأَحْبَابِكَ عَلَى أَعْدَائِكَ (۳) اللَّهُمَّ لَا تُمَكِّنِ الْأَعْدَاءَ فِينَا وَلَا مِنَّا وَلَا تُسَلِّطْهُمْ عَلَيْنَا بِذُنُوبِنَا (۳) (حم) (۷) حُمَّ الْأَمْرُ وَجَاءَ النَّصْرُ فَعَلَيْنَا لَا يُنْصَرُونَ اللَّهُمَّ بِحَقِّ (حم عسق) حِمَايَتُنَا مِمَّا نَخَافُ، اللَّهُمَّ قِنَا شَرَّ الْأَسْوَءِ وَلَا تَحْمِلْنَا مَحَلًّا لِلْبَلْوَى اللَّهُمَّ أَعْطِنَا أَمَلَ الرِّجَاءِ وَفَوْقَ الْأَمَلِ اللَّهُمَّ يَا مَنْ بِفَضْلِهِ لِفَضْلِهِ نَسْأَلُهُ، نَسْأَلُكَ الْعَجَلَ الْعَجَلْ إِلَهِي الْإِجَابَةَ الْإِجَابَةَ يَا مَنْ أَجَابَ سَيِّدَنَا نُوحًا فِي قَوْمِهِ يَا مَنْ نَصَرَ إِبْرَاهِيمَ عَلَى أَعْدَائِهِ يَا مَنْ رَدَّ يُوسُفَ عَلَى يَعْقُوبَ يَا مَنْ كَشَفَ ضُرَّ أَيُّوبَ يَا مَنْ أَجَابَ دَعْوَةَ زَكَرِيَّا يَا مَنْ قَبِلَ تَسْبِيحَ يُونُسَ بْنِ مَتَّى نَسْأَلُكَ اللَّهُمَّ بِأَسْرَارِ أَصْحَابِ هَذِهِ الدَعَوَاتِ الْمُسْتَجَابَاتِ أَنْ تَتَقَبَّلَ مَا بِهِ دَعَوْنَاكَ وَأَنْ تُعْطِيَنَا مَا سَأَلْنَاكَ وَانْجِزْ لَنَا وَعْدَكَ الَّذِي وَعَدْتَهُ لِعِبَادِكَ الصَّالِحِينَ الْمُؤْمِنِينَ (أَنْ لَا إِلَهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ)(۳) انْقَطَعَتْ آمَالُنَا وَعِزَّتُنَا إِلَّا مِنْكَ وَخَابَ رَجَاؤُنَا وَحَقُّنَا إِلَّا فِيكَ، .';
  final String arabicText2 = 'إِنْ أَبْطَأَتْ غَارَةُ الْأَرْحَامِ وَابْتَعَدَتْ \n فَأَقْرَبُ الشَّيْئِ مِنَا غَارَةُ اللَّهِ \n يَا غَارَةَ اللهِ حُبِّي السَّيْرَ مُسْرِعَةً \n فِي حَلِّ عُقْدَتِنَا يَا غَارَةَ اللَّهِ\n يَا غَارَةَ اللَّهِ حُلِّي عَقْدَ مَا رَبَطُوا \n وَشَتِّتِي أَقْوَامًا بِنَا اخْتَلَطُوا \n اللَّهُ أَكْبَرُ سَيْفُ اللَّهِ قَاطِعُهُمْ \n وَكُلَّمَا قَدْ عَلَوْا فِي أَمْرِهِمْ هَبَطُوا';
  final String arabicText3 = ' وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ، فَأَصْبَحُوا لَا يُرَى إِلَّا مَسَاكِنُهُمْ كَذَلِكَ نَجْزِي الْقَوْمَ الْمُجْرِمِينَ) وَصَلَّى اللَّهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ تَسْلِيمًا وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ';


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
                padding: const EdgeInsets.all(8),
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
                          'حزب النصر',
                          style: GoogleFonts.amiri(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          arabicText1,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.amiri(
                            fontSize: 22,
                            height: 2.0,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.brown[50],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.brown[200]!),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.brown[100]!,
                                blurRadius: 4,
                                offset: const Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: arabicText2.split('\n').map((line) {
                              final parts = line.split('۞');
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        parts[0].trim(),
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.amiri(
                                          fontSize: 22,
                                          height: 1.8,
                                          wordSpacing: 12,
                                          color: Colors.brown[900],
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          arabicText3,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.amiri(
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
