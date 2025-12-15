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
class ThajuSwalathScreen extends StatefulWidget {
  const ThajuSwalathScreen({super.key});

  @override
  State<ThajuSwalathScreen> createState() => _ThajuSwalathScreenState();
}

class _ThajuSwalathScreenState extends State<ThajuSwalathScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
   'الَّلهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ صَاحِبِ التَّاجِ وَالْمِعْرَاجِ وَالْبُرَاقِ وَالْعَلَمِ دَافِعِ البَلَاءِ وَالْوَبَاءِ وَالْقَحْطِ وَالْمَرَضِ وَالْآلَمِ اِسْمُهُ مَكْتُوبٌ مَرْفُوعُ مَشْفُوعُ مَنْقُوشُ فِي اللَّوْحِ وَالْقَلَمِ سَيِّدِ الْعَرَبِ وَالْعَجَمِ جِسْمُهُ مُقَدَّسُ مُعَطَّرُ مُطَهَّرُ مُنَوَّرٌ فِي البَيْتِ وَالْحَرَمِ شَمْسِ الضُّحَى بَدْرِ الدُّجَى صَدْرِ العُلَى نُورِ الْهُدَى كَهْفِ الْوَرَى مِصْبَاحِ الظُّلَمِ جَمِيلِ الشَّيَمِ شَفِيعِ الأُمَمِ صَاحِبِ الْجُودِ وَالْكَرَمِ اللَّهُ عَاصِمُهُ، وَجِبْرِيلُ خَادِمُهُ، وَالْبُرَاقُ مَرْكَبُهُ، وَالْمِعْرَاجُ سَفَرُهُ ، وَسِدْرَةُ الْمُنْتَهَى مَقَامُهُ، وَقَابَ قَوْسَيْنِ مَطْلُوبُهُ، وَالمَطْلُوبُ مَقْصُودُهُ، وَالمَقْصُودُ مَوْجُودُهُ ، سَيِّدِ الْمُرْسَلِينَ، خَاتِمِ النَّبِيِّينَ، شَفِيعِ الْمُذْنِبِينَ، أَنِيسِ الغَرِيبِينَ، رَحْمَةٍ لِلْعَالَمِينَ رَاحَةِ العَاشِقِينَ، مُرَادِ الْمُشْتَاقِينَ، شَمْسِ العَارِفِينَ سِرَاجِ السَّالِكِينَ، مِصْبَاحِ الْمُقَرَّبِينَ مُحِبّ الفُقَرَاءِ وَالغُرَبَاءِ وَالْمَسَاكِينِ سَيِّدِ الثَّقَلَيْنِ نَبِيَّ الحَرَمَيْنِ ، اِمَامِ القِبْلَتَيْنِ وَسِيلَتِنَا فِي الدَّارَيْنِ، صَاحِبِ قَابَ قَوْسَيْنِ، مَحْبُوبِ رَبِّ الْمَشْرِقَيْنِ وَالْمَغْرِبَيْنِ، جَدّ الحَسَنِ وَالحُسَيْنِ، مَوْلَانَا وَمَوْلَى الثَّقَلَيْنِ ، أَبِي القَاسِمِ سَيِّدِنَا مُحَمَّدِ بْنِ عَبْدِ اللَّهِ نُورٍ مِنْ نُورِ اللَّهِ ، يَا أَيُّهَا المُشْتَاقُونَ بِنُورِ جَمَالِهِ، صَلُّوا عَلَيْهِ وَآلِهِ وَأَصْحَابِهِ وَسَلَّمُوا تَسْلِيمًا. ';

  static const String malayalam1 = 
    'വളരെ പ്രധാനപ്പെട്ടതും പതിവാക്കേണ്ടതു മായ ഒരു സ്വലാത്താണു സ്വലാത്തു താജ്. തിരു നബിയെ(സ്വ) സ്വപ്‌നത്തിൽ കാണാൻ വരെ ഈ സ്വലാത്ത് ഉപകരിക്കും. എല്ല ആവ ശ്യങ്ങൾ നിറവേറാനും നബി തങ്ങളെ സ്വപ് നത്തിൽ കാണാനും ഈ സ്വലത്ത് ദിവസ വും 7 തവണ ചൊല്ലുക';
  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Swalathul Fathih',
          style: GoogleFonts.anekMalayalam(
            color: borderColor,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
      child: Column(
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
                          const SizedBox(height: 12),
                          Text(
                            malayalam1,
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
                    // Ninth Container (Dua)
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}