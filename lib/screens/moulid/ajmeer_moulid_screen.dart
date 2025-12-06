import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AjmeerMoulidScreen extends StatelessWidget {
  const AjmeerMoulidScreen({super.key});

  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String _arabicOpening =
      'بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ\n'
      'الْحَمْدُ لِلَّهِ الَّذِي خَلَقَ الإِنْسَانَ وَعَلَّمَهُ البَيَانَ، وَبَعَثَ مِنْهُمْ مَنْ يَهْدِي إِلَى الْإِحْسَانِ، وَخَتَمَ النُّبُوَّةَ بِالرَّسُولِ المَبْعُوثِ فِي آخِرِ الزَّمَانِ، وَالْمُنَزَّلِ عَلَيْهِ سُورَةُ الْفُرْقَانِ، نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، الْمُخْتَارِ مِنْ مَعَدَّ بْنِ عَدْنَانُ، الَّذِي أَظْهَرَ الْعَدْلَ وَأَمَاتَ الطُّغْيَانَ، وَأَكَبَّ الْبَاطِلَ وَالْعِصْيَانَ، وَأَبَادَ الْبُهْتَانَ وَعِبَادَةَ الأَوْثَانِ، وَمَيَّزَ الْخَلِيقَةَ إِلَى جَنَّةٍ وَرِضْوَانٍ، أَوْ إِلَى حُفْرَةٍ مِنَ النِّيرَانِ. وَاصْطَفَى مِنْ أُمَّتِهِ مَنْ يَقُومُ بِمَا وَرَدَ بِهِ الْقُرْآنُ إِلَى يَوْمِ الْبَعْثِ وَالْحُسْبَانِ، وَخَلَّصَ مِنْهُمْ مَنْ يُظْهِرُ الْحَقِّ بِمَرَاتِبِ التَّبْيَانِ مِنَ الأَوْلِيَاءِ وَالْأَقْطَابِ وَالْأَغْوَاثِ وَالْأَعْوَانِ، وَمِنْ جُمْلَتِهِمْ مَنْ قَامَ بِقِيَادَةِ أُنَاسِ الْهِنْدِ إِلَى أَرْشَدِ الْأَدْيَانِ وَغَيْرِهَا مِنَ الْبُلْدَانِ، الْمُنْهَمِكِينَ عَلَى عِبَادَةِ الْأَصْنَامِ وَالْحَيَوَانِ، وَإِشَاعَةِ الإِسْلَامِ وَالإِيمَانِ فِي تِلْكَ الْأَحْيَانِ وَالْأَقْرَانِ، وَأَوْقَدَ لَهُ وُقُودَ مَحَارِبِ الْإِيمَانِ، حَتَّى دَخَلَ النَّاسُ فِي دِينِ اللَّهِ أَفْوَاجًا بِالْإِيمَانِ وَالإِتْقَانِ: الشَّيْخُ الْوَلِيُّ قُطْبُ الزَّمَانِ وَسُلْطَانُ الْهِنْدِ مَوْلَانَا غَرِيبٌ نَوَازُ خَاجًا مُعِينُ الدِّينِ الْحَسَنُ السَّنْجَرِي الْأَجْمِيرِي، قَدَّسَ اللَّهُ سِرَّهُ الْعَزِيزَ وَنَفَعَنَا بِعُلُومِهِ وَأَنْوَارِهِ وَبَرَكَاتِهِ فِي الدُّنْيَا وَفِي دَارِ الْبَقَاءِ. وَصَلَّى اللهُ وَسَلَّمَ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ وَصَحْبِهِ وَمَنِ اتَّبَعَهُمْ بِإِحْسَانِ مَا دَامَ النَّجْمُ وَالتَّبْرُ يَسْجُدَانِ.';

  // 1. ENGLISH TRANSLATION
  static const String _englishOpening =
      'In the Name of God, the Most Gracious, the Most Merciful.\n'
      'All praise is due to God, Who created man and taught him clear expression, and sent from among them one who guides to excellence (Ihsan), and sealed the Prophethood with the Messenger sent in the last era, upon whom was revealed the Surah Al-Furqan, our Prophet Muhammad (peace and blessings be upon him), the chosen one from Ma’add ibn Adnan, who established justice and put an end to tyranny, who overcame falsehood and disobedience, and destroyed slander and the worship of idols, and separated creation into Paradise and acceptance (Ridhwan), or a pit of Fire. And He chose from his nation those who uphold what came in the Qur’an until the Day of Resurrection and Reckoning, and purified from them those who manifest the Truth with ranks of clarification from the Saints (Awliya), the Poles (Aqtab), the Helpers (Aghwath), and the Assistants (A’wan). And from their number is he who undertook the leadership of the people of India to the most guided of religions, and other lands, who were immersed in the worship of idols and animals, and spread Islam and Faith during those times and eras, and for whom the fuel of the sanctuaries of faith was kindled, until people entered the religion of God in crowds with faith and precision: **the Saint, the Wali, the Pole of the Time (Qutb az-Zamān) and the Sultan of India, our Master Ghareeb Nawaz Khawaja Muinuddin al-Hasan as-Sanjari al-Ajmeri.** May God sanctify his precious secret and benefit us with his knowledge, his lights, and his blessings in this world and in the Abode of Permanence. And may God send peace and blessings upon our Master Muhammad, and upon his family and his companions, and whoever follows them with excellence as long as the star and the dust prostrate.';

  // 2. EXAMPLE BAITH (Persian Couplets) - A famous one often recited
  static const String _baithArabic = 
      'شَهِ شَهَانِ هِنْدُ الْوَلِيْ\n'
      'مُعِينُ الدِّيْنِ اَجْمِيْرِيْ\n'
      'اَلْحَسَنْ اْلسِّنْجَرِيْ اْلعَظِيمْ\n'
      'فَضْلُهُ عُمْرًا اَلْجَلِيْلُ';
      
  static const String _baithPersian = 
      'سلطانِ ہند کے بادشاہ، ولی اللہ\n'
      'معین الدین اجمیری\n'
      'الحسن سنجری، عظیم الشان\n'
      'ان کا فضل ہمیشہ عظیم ہے';
      
  static const String _baithEnglish = 
      'The King of Kings of India, the Friend of God (Wali),\n'
      'Muinuddin of Ajmer,\n'
      'Al-Hasan al-Sanjari, the magnificent,\n'
      'His bounty is perpetually glorious.';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ajmeer Moulid',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Content Container
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // --- SECTION 1: INTRODUCTION (PROSE) ---
                  _buildSectionTitle('Praise and Introduction'),
                  _buildMoulidSection(
                    arabic: _arabicOpening,
                    english: _englishOpening,
                    isBaith: false,
                  ),
                  
                  const SizedBox(height: 20),

                  // --- SECTION 2: BAITH (COUPLETS) EXAMPLE ---
                  _buildSectionTitle('Baith / Couplets of Praise'),
                  _buildMoulidSection(
                    arabic: _baithArabic,
                    english: _baithEnglish,
                    urduPersian: _baithPersian, // Use Urdu/Persian field for clarity
                    isBaith: true,
                  ),
                  
                  const SizedBox(height: 20),

                  // --- SECTION 3: EXAMPLE OF ADDITIONAL CONTENT ---
                  _buildSectionTitle('A Few Lines of Salawat (Blessings)'),
                  _buildMoulidSection(
                    arabic:
                        'اَللّٰهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ عَلَيْهِ\nاَللّٰهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ\nصَلَاةً تُنْجِينَا بِهَا مِنْ جَمِيعِ الْأَهْوَالِ وَالْآفَاتِ',
                    english:
                        'O God, send peace, blessings, and grace upon him.\nO God, send blessings upon our Master Muhammad,\nA blessing by which You save us from all terrors and calamities.',
                    isBaith: false,
                  ),
                ],
              ),
            ),

            // Favorite Button
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to Favorites')),
                );
              },
              icon: const Icon(Icons.favorite_border, color: Colors.white),
              label: Text(
                'Add to Favorites',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8B5A2B),
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a Section Title
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF8B5A2B),
        ),
      ),
    );
  }

  // Helper method to build a section with Arabic, Urdu/Persian, and English
  Widget _buildMoulidSection({
    required String arabic,
    required String english,
    String? urduPersian,
    required bool isBaith,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Arabic Text
        Text(
          arabic,
          style: GoogleFonts.amiri(
            fontSize: 22,
            height: 2.0,
            color: isBaith ? Colors.red.shade900 : const Color(0xFF5D4037),
            fontWeight: isBaith ? FontWeight.bold : FontWeight.normal,
          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 8),

        // Optional Urdu/Persian Text for Baith
        if (urduPersian != null)
          Column(
            children: [
              Text(
                urduPersian,
                style: GoogleFonts.notoNastaliqUrdu(
                  fontSize: 18,
                  height: 1.8,
                  color: const Color(0xFF8B5A2B),
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 8),
            ],
          ),

        // English Translation
        Text(
          english,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: const Color(0xFF8B5A2B).withOpacity(0.9),
            fontStyle: FontStyle.italic,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Divider(color: Color(0xFFE9E5DC), thickness: 1.5),
      ],
    );
  }
}