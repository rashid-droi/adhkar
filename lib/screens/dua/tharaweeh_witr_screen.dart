import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TharaweehWitrScreen extends StatefulWidget {
  const TharaweehWitrScreen({super.key});

  @override
  State<TharaweehWitrScreen> createState() => _TharaweehWitrScreenState();
}

class _TharaweehWitrScreenState extends State<TharaweehWitrScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final List<Map<String, String>> duas = [
    {
      'title': 'റമളാനിലെ ദുആ',
      'arabic': 'اللَّهُمَّ اجْعَلْ هَذَا الشَّهْرَ الشَّرِيفَ الْعَظِيمَ شَاهِدًا لَنَا لَا شَاهِدًا عَلَيْنَا وَاجْعَلْهُ حُجَّةً لَنَا لَا حُجَّةً عَلَيْنَا وَاعْتِقْ رِقَابَنَا وَرِقَابَ آبَائِنَا وَأُمَّهَاتِنَا وَمَشَائِخِنَا وَأَسَاتِيذِنَا مِنَ الدُّيُونِ وَالْمَظَالِمِ وَالنَّارُ',
    },
    {
      'title': 'തറാവീഹിന് ശേഷമുള്ള ദുആ',
      'arabic': 'اللَّهُمَّ إِنَّ لَكَ فِي كُلِّ لَيْلَةٍ مِنْ لَيَالِي شَهْرِ رَمَضَانَ عُتَقَاءَ وَطُلَقَاءَ وَخُلَصَاءَ وَأَمَنَاءَ مِنَ النَّارُ اجْعَلْنَا مِنْ عُتَقَائِكَ وَطُلَقَائِقَ وَخُلَصَائِكَ وَأَمَنَائِكَ مِنَ النَّارُ وَاجْعَلْنَا يَا إِلَهَنَا يا اللهُ يَا اللَّهُ يَا اللَّهُ مِنَ السُّعَدَاءِ الْمَقْبُولِينَ وَلَا تَجْعَلْنَا مِنْ الْأَشْقِيَاءِ الْمَطْرُودِينَ',
    },
    {
      'title': 'വിത്റിന് ശേഷമുള്ള ദുആ',
      'arabic': 'اللَّهُمَّ إِنِّي أَعُوذُ بِرِضَاكَ مِنْ سُخْطِكَ وَبِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ وَبِكَ مِنْكَ لَا أُحْصِي ثَنَاءً عَلَيْكَ أَنْتَ كَمَا اثْنَيْتَ عَلَى نَفْسِكَ رَبِّنَا تَقَبَّلْ مِنَا صَلَاتَنَا وَصِيَامَنَا وَرُكُوعَنَا وَسُجُودَنَا وَتَخَشُعَنَا وَتَضَرُّعَنَا وَتَمِّمْ تَقْصِيرَنَا وَاسْتَجِبْ دُعَائَنَا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ',
    }
  ];

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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'തറാവീഹ് & വിത്തർ ദുആകൾ',
                            style: GoogleFonts.anekMalayalam(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          ...List.generate(duas.length, (index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    duas[index]['title']!,
                                    style: GoogleFonts.anekMalayalam(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown.shade800,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.brown.shade200),
                                    ),
                                    child: Text(
                                      duas[index]['arabic']!,
                                      style: GoogleFonts.amiri(
                                        fontSize: 20,
                                        height: 2.0,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.justify,
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  if (index < duas.length - 1) 
                                    const Divider(height: 40, thickness: 1, color: Colors.brown),
                                ],
                              ),
                            );
                          }),
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
