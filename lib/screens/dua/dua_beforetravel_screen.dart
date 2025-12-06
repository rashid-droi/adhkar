import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaBeforeTravelScreen extends StatefulWidget {
  const DuaBeforeTravelScreen({super.key});

  @override
  State<DuaBeforeTravelScreen> createState() => _DuaBeforeTravelScreenState();
}

class _DuaBeforeTravelScreenState extends State<DuaBeforeTravelScreen> {
  final ScrollController _scrollController = ScrollController();
  
  // Dua sections
  final List<DuaSection> duaSections = [
    DuaSection(
      title: 'യാത്രയ്ക്ക് മുമ്പ്',
      arabic: ' بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ ۞ اللَّهُمَّ إِلَيْكَ تَوَجَّهْتُ وَبِكَ اعْتَصَمْتُ اللَّهُمَّ اكْفِنِي مَا أَهَمَّنِي وَمَا لَمْ أَهْتَمَّ بِهِ اللَّهُمَّ زَوِّدْنِي التَّقْوَى وَاغْفِرْ لِي ۞ اللَّهُمَّ إِنِّي أَسْأَلُكَ فِي سَفَرِي هَذَا الْبِرَّ وَالتَّقْوَى وَمِنَ الْعَمَلِ مَا تُحِبُّ وَتَرْضَى وَاطْوِ عَنِّي بُعْدَهُ ۞ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ أَنْ أَضِلَّ أَوْ أُضَلَّ أَوْ أَزِلَّ أَوْ أُزَلَّ أَوْ أَظْلِمَ أَوْ أُظْلَمَ أَوْ أَجْهَلَ أَوْ يُجْهَلَ عَلَيَّ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْشَاءِ السَّفَرِ وَكَابَةِ الْمَنْظَرِ وَسُوءِ الْمُنْقَلَبِ فِي الْمَالِ وَالْأَهْلِ وَالْوَلَدِ ۞ ',
    ),
    DuaSection(
      title: 'ദുആ',
      arabic: 'اللَّهُمَّ بِكَ أَسْتَعِينُ وَعَلَيْكَ أَتَوَكَّلُ ۞ اللَّهُمَّ ذَلِّلْ لِي صُعْبَةَ أَمْرِي وَسَهِّلْ عَلَيَّ مَشَقَّةَ سَفَرِي وَارْزُقْنِي مِنَ الْخَيْرِ أَكْثَرَ مِمَّا أَطْلُبُ وَاصْرِفْ عَنِّي كُلَّ شَرٍّ ۞ رَبِّ اشْرَحْ لِي صَدْرِي وَنَوِّرْ قَلْبِي وَيَسِّرْ لِي أَمْرِي ۞ اللَّهُمَّ إِنِّي أَسْتَحْفِظُكَ وَأَسْتَوْدِعُكَ نَفْسِي وَدِينِي وَأَهْلِي وَأَقَارِبِي وَكُلَّ مَا أَنْعَمْتَ بِهِ عَلَيَّ وَعَلَيْهِمْ مِنْ آخِرَةٍ وَدُنْيَا فَاحْفَظْنَا أَجْمَعِينَ مِنْ كُلِّ سُوءٍ يَا كَرِيمُ ۞',
    ),
    DuaSection(
      title: 'വാഹനത്തിൽ കയറിയ ശേഷം',
      arabic: 'سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ ۞',

    ),
    DuaSection(
      title: 'തുടർന്ന് പ്രാർത്ഥിക്കുക',
      arabic: 'الْحَمْدُ لِلَّهِ الْحَمْدُ لِلَّهِ الْحَمْدُ لِلَّهِ ۞ اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ اللَّهُ أَكْبَرُ ۞ لَا إِلَهَ إِلَّا اللَّهُ ۞ اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ ۞ اللَّهُمَّ إِنِّي أَسْأَلُكَ فِي سَفَرِي هَذَا الْبِرَّ وَالتَّقْوَى وَمِنَ الْعَمَلِ مَا تُحِبُّ وَتَرْضَى ۞ اللَّهُمَّ هَوِّنْ عَلَيَّ سَفَرِي وَاطْوِ عَنِّي بُعْدَهُ ۞ اللَّهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ وَالْخَلِيفَةُ فِي الْأَهْلِ وَالْمَالِ ۞ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ وَكَابَةِ الْمَنْظَرِ وَسُوءِ الْمُنْقَلَبِ فِي الْأَهْلِ وَالْمَالِ وَالْوَلَدِ ۞',
    ),
    DuaSection(
      title: 'യാത്രയിൽ പ്രതിസന്ധി വന്നാൽ',
      arabic: 'لَا إِلَهَ إِلَّا اللهُ الْعَظِيمُ الْحَلِيمُ ۞ لَا إِلَهَ إِلَّا اللهُ رَبُّ الْعَرْشِ الْعَظِيمِ ۞ لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ ۞',
    ),
  ];

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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'യാത്രാദുആകൾ',
                          style: GoogleFonts.anekMalayalam(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        ...duaSections.map((section) => _buildDuaSection(section)),
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

  Widget _buildDuaSection(DuaSection section) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            section.title,
            style: GoogleFonts.anekMalayalam(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade800,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.brown.shade200),
            ),
            child: Text(
              section.arabic,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
              style: GoogleFonts.amiriQuran(
                fontSize: 20,
                height: 1.8,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DuaSection {
  final String title;
  final String arabic;

  DuaSection({required this.title, required this.arabic});
}