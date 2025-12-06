import 'dua/salamathul_eeman_screen.dart';
import 'dua/noorul_eeman_screen.dart';
import 'dua/tharaweeh_witr_screen.dart';
import 'dua/vird_allatheef_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dua/common_dua_screen.dart';
import 'dua/dua_afterazan_screen.dart';
import 'dua/dua_afterswalath_screen.dart';
import 'dua/dua_afterwudu_screen.dart';
import 'dua/dua_alkarb_screen.dart';
import 'dua/dua_beforetravel_screen.dart';
import 'dua/dua_near_qabr_screen.dart';
import 'dua/hizb_albahr_screen.dart';
import 'dua/hizb_alnawawi_screen.dart';
import 'dua/hizb_alnasr_screen.dart';
import 'dua/kanzul_arsh_screen.dart';
import 'dua/khathmul_quran_screen.dart';

class DuaScreen extends StatelessWidget {
  const DuaScreen({super.key});

  // List of button titles for different duas
  final List<String> buttonTitles = const [
    'Common Dua',
    'Dua After Azan',
    'Dua After Swalath',
    'Dua After Wudu',
    'Dua Al-Karb',
    'Dua Before Travel',
    'Dua Near Qabr',
    'Hizb Al-Bahr',
    'Hizb Al-Nawawi',
    'Hizb Al-Nasr',
    'Kanzul Arsh',
    'Khathmul Quran',
    'Noorul Eeman',
    'Salamathul Eeman',
    'Tharaveeh & Vithr',
    'Vird Al-latheef'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Duas',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        backgroundColor: const Color(0xFFE9E5DC),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: const Color(0xFFE9E5DC),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: buttonTitles.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                // --- NAVIGATION LOGIC ---
                if (buttonTitles[index] == 'Common Dua') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CommonDuaScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua After Azan') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaafterazanScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua After Swalath') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaAfterSalahScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua After Wudu') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaAfterWuduScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua Al-Karb') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaAlKarbScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua Before Travel') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaBeforeTravelScreen()),
                  );
                } else if (buttonTitles[index] == 'Dua Near Qabr') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DuaNearQabrScreen()),
                  );
                } else if (buttonTitles[index] == 'Hizb Al-Bahr') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HizbAlbahrScreen()),
                  );
                } else if (buttonTitles[index] == 'Hizb Al-Nawawi') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HizbAlnawawiScreen()),
                  );
                } else if (buttonTitles[index] == 'Hizb Al-Nasr') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HizbAlnasrScreen()),
                  );
                } else if (buttonTitles[index] == 'Kanzul Arsh') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KanzulArshScreen()),
                  );
                } else if (buttonTitles[index] == 'Khathmul Quran') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KhathmulQuranScreen()),
                  );
                } else if (buttonTitles[index] == 'Noorul Eeman') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NoorulEemanScreen()),
                  );
                } else if (buttonTitles[index] == 'Salamathul Eeman') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SalamathulEemanScreen()),
                  );
                } else if (buttonTitles[index] == 'Tharaveeh & Vithr') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TharaweehWitrScreen()),
                  );
                } else if (buttonTitles[index] == 'Vird Al-latheef') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VirdAllatheefScreen()),
                  );
                }
                // Add more else if blocks here for other buttons
              }, // <--- THIS BRACE WAS MISSING
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF8B5A2B),
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                side: BorderSide(
                  color: const Color(0xFF8B5A2B).withOpacity(0.2),
                  width: 1.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      buttonTitles[index],
                      style: GoogleFonts.amiri(
                        fontSize: 18,
                        color: const Color(0xFF8B5A2B),
                        height: 1,
                      ),
                      textAlign: TextAlign.left, // Changed to left for English text flow
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF8B5A2B)),
                ],
              ),
            ),
            
          );
        },
      ),
    );
  }
}