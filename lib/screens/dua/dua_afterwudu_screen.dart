import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuaAfterWuduScreen extends StatefulWidget {
  const DuaAfterWuduScreen({super.key});

  @override
  State<DuaAfterWuduScreen> createState() => _DuaAfterWuduScreenState();
}

class _DuaAfterWuduScreenState extends State<DuaAfterWuduScreen> {
  final ScrollController _scrollController = ScrollController();

  final String duaBeforeWashingHands =
      'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّحِيمِ بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُهُ الْحَمْدُ لِلَّهِ الَّذِي جَعَلَ الْمَاءَ طَهُورًا';

  final String duaAfterWudu =
      'أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّداً عَبْدُهُ وَرَسُولُهُ اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ وَاجْعَلْنِي مِنْ عِبَادِكَ الصَّالِحِينَ سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ';

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
              expandedHeight: 50,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ];
        },
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Dua before washing hands
                  _buildDuaCard(
                    'മുൻകൈ രണ്ടും കഴുകുമ്പോൾ ചൊല്ലുക',
                    duaBeforeWashingHands,
                  ),

                  const SizedBox(height: 16), // Spacing between cards

                  // Dua after completing wudu
                  _buildDuaCard(
                    'വുളുവിന് ശേഷം ഖിബ്ലക്ക് മുന്നിട്ട് ആകാശത്തേക്ക് കൈ ഉയർത്തി ചൊല്ലുക',
                    duaAfterWudu,
                  ),

                  const SizedBox(height: 20), // Bottom padding
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Updated function signature: removed 'translation' parameter
  Widget _buildDuaCard(String title, String arabicText) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.green.shade700, width: 1),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFAF2),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title (in Malayalam)
            Text(
              title,
              style: GoogleFonts.anekMalayalam(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            // Arabic Text
            SizedBox(
              width: double.infinity,
              child: Text(
                arabicText,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: GoogleFonts.amiriQuran(
                  fontSize: 22,
                  height: 2.0,
                  color: Colors.black,
                ),
              ),
            ),
            // Removed translation section here
          ],
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