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
class NariyathSwalathScreen extends StatefulWidget {
  const NariyathSwalathScreen({super.key});

  @override
  State<NariyathSwalathScreen> createState() => _NariyathScreenState();
}

class _NariyathScreenState extends State<NariyathSwalathScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
    'اللَّهُمَّ صَلِّ صَلَاةً كَامِلَةً وَسَلَّمْ سَلَاماً تَامَّا عَلَى سَيِّدِنَا مُحَمَّدٍ الَّذِي تَنْحَلُّ بِهِ الْعُقَدُ وَتَنْفَرِجُ بِهِ الْكُرَبُ وَتُقْضَى بِهِ الْحَوَائِجُ وَتُنَالُ بِهِ الرَّغَائِبُ وَحُسْنُ الْخَوَاتِمِ وَيُسْتَسْقَى الْغَمَامُ بِوَجْهِهِ الْكَرِيمِ وَعَلَى آلِهِ وَصَحْبِهِ فِي كُلِّ لَمْحَةٍ وَنَفَسٍ بِعَدَدِ كُلِّ مَعْلُومٍ لَكَ';

  static const String malayalam1 = 
    'ഇമാം ദൈനൂരി (റ) പറയുന്നു: ആരെങ്കിലും നിസ്കാര ശേഷം പതിനൊന്നു പ്രാവശ്യം ഈ സ്വലാതു ചൊല്ലുകയും മുറിഞ്ഞു പോകാതെ ഒരു വിർദ് ആയി പതിവാക്കുകയും ചെയ്താൽ ഉന്നതമായ സ്ഥാനങ്ങളും ഐശ്വര്യമുള്ള അധികാരങ്ങളും വന്നെത്തുന്നതാണ്.എല്ലാ ദിവസവും സുബ്ഹിനു ശേഷം ഇത് നാല്പത്തൊന്നു പ്രാവശ്യം പതിവാക്കുന്നവരുടെ ഉദ്ദേശ്യം നിറവേറ്റപ്പെടുന്നതാണ്. എല്ലാ ദിവസവും നൂറു പ്രാവശ്യം ഇത് പതിവാക്കുന്നവരുടെ ആവശ്യങ്ങൾ പൂർത്തീകരിക്കപ്പെടുകയും ഉദ്ദേശിച്ചിലുപരിയായി ലക്ഷ്യം കൈവരിക്കുകയും ചെയ്യും';
  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Nariyath Swalath',
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
                            textAlign: TextAlign.center,
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
    );
  }
}