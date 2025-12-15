import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// --- StyledContainer Widget ---
class StyledContainer extends StatefulWidget {
  final String? text;
  final Widget? child;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign textAlign;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final Color? textColor;
  final double? lineHeight;
  final Color? borderColor;
  final bool showShadow;
  final EdgeInsetsGeometry? padding;

  const StyledContainer({
    super.key,
    this.text,
    this.child,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.justify,
    this.height,
    this.margin,
    this.textColor,
    this.lineHeight = 1.5,  // Reduced from 2.1 to 1.5 for tighter spacing
    this.borderColor,
    this.showShadow = true,
    this.padding,
  })  : assert(text != null || child != null,
            'Either text or child must be provided to StyledContainer');

  @override
  _StyledContainerState createState() => _StyledContainerState();
}

class _StyledContainerState extends State<StyledContainer> {
  @override
  Widget build(BuildContext context) {
    Widget content = widget.child ??
        Text(
          widget.text!,
          textAlign: widget.textAlign,
          style: GoogleFonts.amiri(
            fontSize: widget.fontSize,
            height: widget.lineHeight,
            fontWeight: widget.fontWeight,
            color: widget.textColor,
          ),
          textDirection: TextDirection.rtl,
        );

    return Container(
      margin: widget.margin ?? const EdgeInsets.fromLTRB(16, 12, 16, 12),
      constraints: BoxConstraints(
        minHeight: widget.height ?? 50,
      ),
      child: CustomPaint(
        painter: BorderPainter(
            borderColor: widget.borderColor ?? Theme.of(context).primaryColor),
        child: Container(
          width: double.infinity,
          padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 22),  // Use provided padding or default
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: widget.showShadow
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: content,
        ),
      ),
    );
  }
}

// --- CustomPainter for the Decorative Border ---
class BorderPainter extends CustomPainter {
  final Color borderColor;

  BorderPainter({required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor.withOpacity(0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);

    final innerPaint = Paint()
      ..color = borderColor.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    final innerRect = Rect.fromLTWH(4, 4, size.width - 8, size.height - 8);
    canvas.drawRect(innerRect, innerPaint);

    final sidePatternPaint = Paint()
      ..color = borderColor.withOpacity(0.4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (double i = 20; i < size.height - 20; i += 50) {
      canvas.drawLine(Offset(4, i), Offset(4, i + 20), sidePatternPaint);
      canvas.drawLine(Offset(size.width - 4, i),
          Offset(size.width - 4, i + 20), sidePatternPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

// --- Main Screen Widget ---
class AlamuSwalathScreen extends StatefulWidget {
  const AlamuSwalathScreen({super.key});

  @override
  State<AlamuSwalathScreen> createState() => _AlamuSwalathScreenState();
}

class _AlamuSwalathScreenState extends State<AlamuSwalathScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
    'اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُرْسَلِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُجَاهِدِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الشَّاهِدِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْخَائِفِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الطَّائِعِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ التَّائِبِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْعَابِدِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْحَامِدِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الصَّالِحِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الرَّاكِعِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ السَّاجِدِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْقَائِمِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْقَاعِدِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُتَّقِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُسْتَغْفِرِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ النَّادِمِينَاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الشَّاكِرِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْحَافِظِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الذَّاكِرِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْعَاقِلِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُحْسِنِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْأَكْرَمِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُنْذِرِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْمُبَشِّرِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الطَّيِّبِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ النَّبِيِّينَ اللَّهُمَّ صَلِّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْعَالَمِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ النَّبِيِّ الزَّكِي التَّقِيِّ اللَّهُمَّ صَلِّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ الْقُرَشِيِّ الْهَاشِيِّ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ الْمَدَنِيَّ الْعَرَبِيِّ الْمُكَرَّمِ يَوْمَ الْقِيَامَةِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ أَهْلِ الْجَنَّةِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ صَاحِبِ الْمَقَامِ الْمَحْمُودِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ صَاحِبِ الصِّرَاطِ الْمُسْتَقِيمِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ أَفْضَلِ الْأَوَّلِينَ وَالْآخِرِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى جَمِيعِ الْمَلَائِكَةِ الْمُقَرَّبِينَ وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ ذَاكِرًا وَحَبِيبًا وَمُذَكِّرًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ أَحْمَدًا وَمُحَمَّدًا وَسَيِّدًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ صَابِرًا وَنَبِيًّا وَمُرَاقِبًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ عَالِيًا وَرَحِيمًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ عَاقِبًا وَكَرِيمًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ عَدْلاً وَجَوَادًا وَمُزَّمِّلاً مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ قَاسِمًا وَمَهْدِيًّا وَهَادِيًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ شَكُورًا وَحَرِيصًا مُحَمَّدٍ رَسُولِ اللهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ قَائِمًا وَصَفِيًّا وَعَبْدَ اللهِ مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ شَاهِدًا وَبَصِيرًا وَمَهْدِيًّا مُحَمَّدٍ رَسُولِ اللَّهِاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ بَاهِيًا وَنُورًا مَكَّيًّامُحَمَّدٍ رَسُولِ اللهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُشَاكِرًا وَوَلِيًّا وَنَذِيرًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّوَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ بُرْهَانًا صَحِيحًا وَشَرِيفًا مُحَمَّدٍرَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ طَاهِرًاوَصَفِيًّا وَمُخْتَارًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْعَلَى مَنْ سَمَّيْتَهُ مُسْلِمًا وَرَؤُوفًا مُحَمَّدٍ رَسُولِ اللَّهِاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ مُؤْمِنًا وَحَلِيمًا مُحَمَّدٍرَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ قَائِمًاوَمَحْمُودًا وَحَامِدًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْعَلَى مَنْ سَمَّيْتَهُ مِصْبَاحًا وَآمِرًا وَنَاهِيًا مُحَمَّدٍ رَسُولِاللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَآلِهِ وَصَحْبِهِ وَأَزْوَاجِهِوَذُرِّيَّاتِهِ وَأَهْلِ بَيْتِهِ وَعَلَى كُلِّ الصَّحَابَةِ أَجْمَعِينَ ';

  static const String dua1 =
    'مَنْ سَمَّيْتَهُ شَاهِدًا وَبَصِيرًا وَمَهْدِيًّا مُحَمَّدٍ رَسُولِ اللَّهِاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ بَاهِيًا وَنُورًا مَكَّيًّامُحَمَّدٍ رَسُولِ اللهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُشَاكِرًا وَوَلِيًّا وَنَذِيرًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّوَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ بُرْهَانًا صَحِيحًا وَشَرِيفًا مُحَمَّدٍرَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ طَاهِرًاوَصَفِيًّا وَمُخْتَارًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْعَلَى مَنْ سَمَّيْتَهُ مُسْلِمًا وَرَؤُوفًا مُحَمَّدٍ رَسُولِ اللَّهِاللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ مُؤْمِنًا وَحَلِيمًا مُحَمَّدٍرَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْ عَلَى مَنْ سَمَّيْتَهُ قَائِمًاوَمَحْمُودًا وَحَامِدًا مُحَمَّدٍ رَسُولِ اللَّهِ اللَّهُمَّ صَلَّ وَسَلَّمْعَلَى مَنْ سَمَّيْتَهُ مِصْبَاحًا وَآمِرًا وَنَاهِيًا مُحَمَّدٍ رَسُولِاللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَآلِهِ وَصَحْبِهِ وَأَزْوَاجِهِوَذُرِّيَّاتِهِ وَأَهْلِ بَيْتِهِ وَعَلَى كُلِّ الصَّحَابَةِ أَجْمَعِينَ وَمُصِيبَةٍ وَنَفْسُ كُرُبَاتِي وَاجْعَلْنِي مِنْ أَهْلِ التَّقْوَى وَالْمَغْفِرَةِ وَأَجِرْنِي مِنَ النَّارِ وَأَدْخِلْنِي الْجَنَّةَ وَاجْعَلْنِي مِنَ الْفَائِزِينَ فِي الدِّينِ وَالدُّنْيَا وَالْآخِرَةِ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ وَصَلَّى اللَّهُ عَلَى سَيِّدِنَا مُحَمَّدٍ خَيْرٍ خَلْقِهِ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمْ سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُونَ وَسَلَامٌ عَلَى الْمُرْسَلِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ';

  static const String duamalayalam = 'ഈ സ്വലാത്ത് അഞ്ച് വഖ്‌ത് നിസ്കാര ശേ ഷം ചൊല്ലിയാൽ കഴിഞ്ഞുപോയ 10 വർഷത്തെ ദോഷങ്ങൾ പൊറുക്കുന്നതാണ്. സ്ഥിരമായി അഞ്ച് വഖ്ത് നിസ്കാരശേഷം ഏഴ് പ്രാവശ്യമോ മൂന്ന് പ്രാവശ്യമോ ചൊല്ലിയായാൽ അവന്റെ ഈമാനി ന് അല്ലാഹു കാവൽ നൽകും. വീടുകളിൽ വെച്ച് ചൊല്ലിയാൽ വീട്ടിൽ ബർക്കത്ത് ഉണ്ടാകും.വെള്ളിയാഴ്‌ച രാവിൽ പന്ത്രണ്ട് പ്രാവശ്യം ഈ സ്വലാത്ത് ചൊല്ലിയാൽ റസൂൽ(സ)യെ സ്വപ്നത്തിൽ കാണുന്നതാണെന്ന് സുഫ്യാനു സ്സൗരീ എന്നവർ പറഞ്ഞിരിക്കുന്നു. ഇനി ദേഹവും ഖൽബും ദോഷങ്ങളാൽ ചീത്തയായ കാരണം കണ്ടില്ലെങ്കിൽ കണ്ട ഫലം ലഭിക്കും.ഇത് ചൊല്ലുന്നവരുടെ കൂട്ടത്തിലും അതി ന്റെ ഫലം ലഭിക്കുന്നവരുടെ കൂട്ടത്തിലും അല്ലാഹു നമ്മെ എല്ലാവരെയും ഉൾപ്പെടുത്തട്ടെ. ആമീൻ';


  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Alamu Swalath',
          style: GoogleFonts.anekMalayalam(
            color: borderColor,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: true,
              thickness: 6.0,
              radius: const Radius.circular(3.0),
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Column(
                  children: [
                    // First Container (Prose) - Arabic 1
                    StyledContainer(
                      fontSize: 18.0,
                      lineHeight: 2.1,
                      borderColor: borderColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '                         بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ      ',
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.lateef(
                              fontSize: 24,
                              height: 2.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            arabic1,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.lateef(
                              fontSize: 26,
                              height: 1.6,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    // Ninth Container (Dua)
                    StyledContainer(
                      fontSize: 18.0,
                      lineHeight: 2.1,
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'دُعَاءٌ',
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiriQuran(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            dua1,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.lateef(
                              fontSize: 26,
                              height: 1.6,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            duamalayalam,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.lateef(
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 66),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}