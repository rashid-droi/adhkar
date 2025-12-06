import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoorulEemanScreen extends StatefulWidget {
  const NoorulEemanScreen({super.key});

  @override
  State<NoorulEemanScreen> createState() => _NoorulEemanScreenState();
}

class _NoorulEemanScreenState extends State<NoorulEemanScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText = 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ اللهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ اللَّهُمَّ يَا جَامِعَ النَّاسِ لِيَوْمِ لا رَيْبَ فِيهِ إِنَّ اللَّهَ لَا يُخْلِفُ الْمِيعَادِ اجْمَعْ بَيْنَ عِلْمِي وَارْشَادِي وَإِيمَانِي وَمَالِي وَمُلُوكِي إِنَّمَا أَمْرُهُ إِذَا أَرَادَ شَيْئًا أَنْ يَقُولَ لَهُ كُنْ فَيَكُونُ اللَّهُمَّ يَسِّرْ مُرَادِي بِحُرْمَةِ هَذَا الدُّعَاءِ الْمُعَظَّمِ اللَّهُمَّ اقْضِ حَاجَتِي يَا قَاضِيَ الْحَاجَاتِ بِحَقِّ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَا اللَّه يَا رَحْمَنُ يَا الله يَا رَحِيمُ يَا الله يَا مَلِكُ يَا اللَّه يَا قُدُّوسُ يَا اللَّه يَا سَلَامُ يَا الله يَا مُؤْمِنُ يَا اللَّهُ يَا مُهَيْمِنُ يَا اللَّهَ يَا عَزِيزُ يَا الله يَا جَبَّارُ يَا الله يَا مُتَكَبِّرُ يَا اللَّه يَا خَالِقُ يَا الله يَا بَارِئُ يَا الله يَا مُصَوِّرُ يَا اللَّه يَا غَفَّارُ يَا اللَّهَ يَا قَهَّارُ يَا الله يَا وَهَّابُ يَا الله يَا رَزَّاقُ يَا اللَّهَ يَا فَتَّاحُ يَا اللَّهُ يَا حَلِيمُ يَا اللَّهُ يَا قَابِضُ يَا اللَّهُ يَا بَاسِطُ يَا اللَّهَ يَا خَافِضُ يَا الله يَا رَافِعُ يَا اللَّهِ يَا مُعِزُّ يَا اللَّهَ يَا مُذِلُّ يَا اللَّه يَا سَمِيعُ يَا الله يَا بَصِيرُ يَا اللَّهَ يَا حَكَمُ يَا اللَّهَ يَا عَدْلُ يَا الله يَا لَطِيفُ يَا الله يَا خَبِيرُ يَا اللَّهَ يَا عَلِيمُ يَا الله يَا عَظِيمُ يَا اللَّهَ يَا غَفُورُ يَا اللَّهَ يَا شَكُورُ يَا اللَّهَ يَا عَلِيُّ يَا الله يَا كَبِيرُ يَا الله يَا حَفِيظٌ يَا اللَّهُ يَا مُقِيتُ يَا الله يَا حَسِيبُ يَا الله يَا جَلِيلُ يَا اللَّهُ يَا كَرِيمُ يَا اللَّه يَا رَقِيبُ يَا الله يَا مُجِيبُ يَا اللَّهُ يَا وَاسِعُ يَا اللَّهَ يَا حَكِيمُ يَا الله يَا وَدُودُ يَا الله يَا مَجِيدُ يَا اللَّهَ يَا بَاعِثُ يَا الله يَا شَهِيدُ يَا الله يَا حَقُّ يَا اللَّهُ يَا وَكِيلُ يَا اللَّهُ يَا قَوِيٌّ يَا الله يَا مَتِينُ يَا الله يَا وَلِيُّ يَا اللَّهُ يَا حَمِيدُ يَا اللَّه يَا مُحْصِي يَا الله يَا مُبْدِئُ يَا اللَّهَ يَا مُعِيدُ يَا اللَّهُ يَا مُحْيِي يَا الله يَا مُمِيتُ يَا الله يَا حَيُّ يَا اللَّهُ يَا قَيُّومُ يَا اللَّه يَا وَاجِدُ يَا الله يَا مَاجِدُ يَا اللَّهَ يَا وَاحِدُ يَا اللَّهَ يَا أَحَدُ يا الله يَا صَمَدُ يَا الله يَا قَادِرُ يَا اللَّه يَا مُقْتَدِرُ يَا الله يَا مُقَدِّمُ يَا الله يَا مُؤَخِّرُ يَا اللَّهُ يَا أَوَّلُ يَا اللَّهَ يَا آخِرُ يَا الله يَا ظَاهِرُ يَا الله يَا بَاطِنُ يَا اللَّه يَا وَالِي يَا الله يَا مُتَعَالِي يَا الله يَا بَرُّ يَا اللَّه يَا تَوَّابُ يَا اللَّهُ يَا مُنْتَقِمُ يَا الله يَا عَفُوٌّ يَا الله يَا رَؤُوفُ يَا اللَّه يَا مَالِكَ الْمُلْكِ يَا الله يَا ذَالْجَلَالِ وَالْإِكْرَامِ يَا اللَّهَ يَا مُقْسِطُ يَا اللَّه يَا جَامِعُ يَا الله يَا غَنِيُّ يَا اللَّهُ يَا مُغْنِي يَا اللَّهُ يَا مَانِعُ يَا الله يَا ضَارُّ يَا الله يَا نَافِعُ يَا اللَّهُ يَانُورُ يَا اللَّهَ يَا هَادِي يَا الله يَا بَدِيعُ يَا الله يَا بَاقِي يَا اللَّهَ يَا وَارِثُ يَا اللَّهَ يَا رَشِيدُ يَا اللَّهُ يَا صَبُورُ يَا اللَّهُ بِرَحْمَةِ اللَّهِ الْمَنَّانِ رَبِّ تَمِّمْ بِالْخَيْرِ وَالسَّعَادَةِ اللَّهُمَّ ادْخِلْنَا فِي زُمْلَةِ الْأَوْلِيَاءِ وَالْمُتَّقِينَ اللهُمَّ لَا تُضَيِّعْ دُعَائِي بِمَحْضِ فَضْلِكَ يَا كَرِيمُ اللهُمَّ سَلِّمْنِي مِنْ آفَاتِ الدُّنْيَا وَعَذَابِ الْآخِرَةِ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ وَصَلَّى اللَّهُ عَلَى خَيْرٍ خَلْقِهِ سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ أَجْمَعِينَ آمِينَ';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
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
                            'نور الإيمان',
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