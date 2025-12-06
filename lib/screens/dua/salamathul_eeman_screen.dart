import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SalamathulEemanScreen extends StatefulWidget {
  const SalamathulEemanScreen({super.key});

  @override
  State<SalamathulEemanScreen> createState() => _SalamathulEemanScreenState();
}

class _SalamathulEemanScreenState extends State<SalamathulEemanScreen> {
  final ScrollController _scrollController = ScrollController();
  
  final String arabicText = 'لا إِلَهَ إِلَّا اللهُ الْمَوْجُودُ بِكُلِّ زَمَانٍ لَا إِلَهَ إِلَّا اللَّهُ الْمَعْرُوفُ بِكُلِّ اِحْسَانٍ لَا إِلَهَ إِلَّا اللهُ الْمَعْبُودُ بِكُلِّ مَكَانٍ لَا إِلَهَ إِلَّا اللهُ الْمَذْكُورُ بِكُلِّ لِسَانٍ لا إِلهَ إلا الله كُلَّ يَوْمٍ هُوَ فِي شَأْنٍ لَا إِلَهَ إِلا اللَّهُ الْأَمَانَ الْأَمَانَ مِنْ زَوَالِ الْإِيمَانِ وَمِنْ شَرِّ الشَّيْطَانِ وَمِنْ ظُلْمِ السُّلْطَانِ يَا قَدِيمَ الْإِحْسَانِ يَا غَفُورُ يَا غَفَّارُ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ';

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