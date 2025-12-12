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
class RifaeeMoulidScreen extends StatefulWidget {
  const RifaeeMoulidScreen({super.key});

  @override
  State<RifaeeMoulidScreen> createState() => _RifaeeMoulidScreenState();
}

class _RifaeeMoulidScreenState extends State<RifaeeMoulidScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
    'الْحَمْدُ لِلَّهِ الَّذِي خَلَقَ الْجِنَّ وَالْإِنْسَ لِيَعْبُدُوهُ وَاخْتَارَ مِنْهُمْ بَنِي آدَمَ لِيَذْكُرُوهُ وَاصْطَفَى مِنْ بَنِي آدَمَ الْأَنْبِيَاءَ وَالرُّسُلَ لِيَهْتَدُوهُ وَخَيَّرَ مِنْهُمْ سَيِّدَ الْكَائِنَاتِ مُحَمَّدًا صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لِيَقْتَدُوهُ وَأَعْطَى لَهُمْ مَلَا وَسُبُلاً وَأَمَمًا وَجَعَلَ أُمَّةَ نَبِيِّنَا وَشَفِيعِنَا وَسَيِّدِنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ خَيْرَ الْأُمَمِ ذِمَمًا وَصَيَّرَ بَعْضًا مِنْ أُمَمِهِ أَقْطَابًا وَأَغْيَاثًا وَأَفْرَادًا هِمَمًا وَفَضَّلَ مِنْهُمْ سَيِّدَنَا أَبَا الْعَبَّاسِ سُلْطَانَ الْعَارِفِينَ السَّيِّدَ أَحْمَدَ الْكَبِيرِ الرِّفَاعِيِّ رَضِيَ اللَّهُ عَنْهُ مَعْرِفَةً وَعِلْمًا وَكَانَتْ وِلَادَتُهُ يَوْمَ الْإِثْنَيْنِ السَّابِعَ وَالْعِشْرِينَ مِنْ شَهْرِ رَجَبٍ سَنَةَ خَمْسِمِائَةٍ مِنْ هِجْرَةِ سَيِّدِ الْكَوْنَيْنِ شَرَفًا وَنِعَمًا وَهُوَ السَّيِّدُ أَحْمَدُ بْنُ السَّيِّدِ عَلِي بْنِ السَّيِّدِ يَحْيَى بْنِ السَّيِّدِ ثَابِتِ بْنِ السَّيِّدِ حَازِمِ بْنِ السَّيِّدِ عَلِي بْنِ السَّيِّدِ حَسَنِ بْنِ السَّيِّدِ مَهْدِي بْنِ السَّيِّدِ مُحَمَّدِ بْنِ السَّيِّدِ حُسَيْنِ بْنِ السَّيِّدِ أَحْمَدِ بْنِ السَّيِّدِ أَحْمَدِ بْنِ السَّيِّدِ مُوسَى الثَّانِي بْنِ السَّيِّدِ إِبْرَاهِيمَ بْنِ السَّيِّدِ مُوسَى الْكَاظِمِ بْنِ السَّيِّدِ جَعْفَرِ الصَّادِقِ بْنِ السَّيِّدِ مُحَمَّدِنِ الْبَاقِرِ بْنِ السَّيِّدِ زَيْنِ الْعَابِدِينَ عَلَي بْنِ السَّيدِ الْإِمَامِ حَسَنِ بْنِ السَّيِّدِ الْإِمَامِ عَلِي بْنِ أَبِي طَالِبٍ رَضِيَ اللَّهُ عَنْهُمْ أَجْمَعِينَ وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ وَأَوْلَادِهِ أَجْمَعِينَ مَا دَامَتِ الْأَرْضُ وَالسَّمَاءُ ';
  
  static const String arabicbaith1 =
    'الا لِلْإِلَهِ الْحَمْدُ فِي كُلِّ حَالَةٍ\n'
    'يُفِيضُ إِلَيْهِمْ رَحْمَةً بِجَوَادِهِ\n'
    'وُجُوبٌ عَلَيْنَا شُكْرُ فَضْلِ إِلَهِنَا\n'
    'وَأَشْهَدُ أَنَّ اللَّهَ لَا رَبَّ غَيْرُهُ\n'
    'وَكَرَّمَ بَيْنَ الْخَلْقِ أَبْنَاءَ آدَمِ\n'
    'وَخَيْرَ مِنْهُمْ شَافِعَ الْخَلْقِ أَحْمَدًا\n'
    'وَمِنْهُمْ شُمُوسٌ ثُمَّ بَدْرُ وَانْجُمُ\n'
    'وَمِنْهُمْ كَشَمْسٍ فِي الْبَطَائِحِ لَائِحًا\n'
    'وَأَحْمَدُ كَبِيرُنِ اسْمُهُ الْمُتَبَرَّكُ\n'
    'عَلَى جَدِهِ صَلَّى الْإِلَهُ وَسَلَّمَا\n'
    'وَآلٍ وَأَصْحَابِ وَمَنْ تَابَعُوا لَهُمْ\n'
    'وَرِضْوَانُ رَبِّي عَنْهُ مَا طَلَعَ طَالِعُ\n'
    'عَلَى اللَّهُ عَنْ مُدَّاحِ غَوْثِ الْبَرِيَّةِ';

  static const String arabicbaith2 =
    'هُوَ الْخَالِقُ الْأَشْيَاءَ كُلاً بِحِكْمَةٍ\n'
    'وَفَضْلٍ وَاحْسَانٍ وَلُطْفِ وَمِنَّةٍ\n'
    'بِالْآئِهِ مِنْ غَيْرِ حَدٍ وَحَصْرَةٍ\n'
    'مُصَوِّرُ كُلِّ الْخَلْقِ مِنْ غَيْرِ صُنْعَةٍ\n'
    'وَأَرْسَلَ رُسُلاً بِالْكِتَابِ وَسُنَّةٍ\n'
    'وَأُمَّتُهُ سَمَّاهُمُ خَيْرَ أُمَّةٍ\n'
    'وَشُهْبُ ضَوِيٌّ فِي السَّمَاءِ الْعَلِيَّةِ\n'
    'جَلَتْ نُورُهُ فِي الشَّرْقِ وَالْغَرْبِ ضَوْأَةٍ\n'
    'أَبُوهُ أَبُو الْحَسَنِ الْعَلِي الْمُقِلَّةِ\n'
    'صَلوةٌ وَتَسْلِيمًا وَأَعْلَى تَحِيَّةٍ\n'
    'وَأَوْلَادِهِ مِنْ كُلِّ عَامٍ وَخَاصَّةٍ\n'
    'وَمَا دَارَ أَفْلَاكُ الْبُرُوجِ بِحِكْمَةٍ\n'
    'وَسُمَّاعِ مَدْجٍ كُلَّ شَوْمٍ وَزَلَّةٍ';

  static const String arabic2 = 
    'ذُكِرَ فِي كِتَابِ نُورِ الْأَحْمَدِيَّةِ فِي اخْتِصَارِ مَنَاقِبِ السَّيِّدِ أَحْمَدَ الْكَبِيرِ رَضِيَ اللَّهُ عَنْهُ عَنِ الشَّيْخِ عَلِي الْهِيتِي قَالَ سُئِلَ شَيْخُنَا سُلطَانُ الْعَارِفِينَ سَيِّدِي أَحْمَدَ الْكَبِيرِ رَضِيَ اللَّهُ عَنْهُ عَنْ سَبَبٍ لَقْبِهِ وَخِطَابِهِ بِسُلْطَانِ الْعَارِفِينَ قَالَ كُنْتُ يَوْمًا قَائِمًا فِي الْعَرَفَاتِ عَلَى قَدَمِ التَّجْرِيدِ فَتَجَلَّى اللهُ تَعَالَى فِي قَلْبِي ضَاحِكًا بِنُورِ جَلَالِهِ وَجَمَالِهِ وَخَاطَبَنِي يَا سُلْطَانَ الْعَارِفِينَ السَّيِّدَ أَحْمَدَ الْكَبِيرِ الرِّفَاعِي وَيَا غَوْثَ الْأَعْظَمِ أَنْتَ حَبِيبِي وَمَعْشُوقِي وَأَنَا مُشْتَاقُ إِلَيْكَ وَأَنْتَ مُشْتَاقُ بِي وَأَنَا مَقْصُودُكَ وَانْتَ مَقْصُودِي ثُمَّ رَأَيْتُ رِجَالَ الْغَيْبِ يَنْزِلُونَ عَلَى الْهَوَى مَثْنَى وَثُلَاثَ وَرُبَاعَ وَيَقُولُونَ أَنْتَ سُلْطَانُ الْعَارِفِينَ وَمَحْبُوبُ رَبِّ الْعَالَمِينَ ثُمَّ جَاءَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأَصْحَابُهُ حَوْلَهُ وَأَنَا عَرَفْتُهُ فَتَقَدَّمْتُ بِثَلَاثَةِ أَقْدَامٍ وَقُلْتُ السَّلَامُ عَلَيْكَ يَا جَدِي فَأَجَابَ وَعَلَيْكَ السَّلَامُ يَا وَلَدِي أَنْتَ سُلْطَانُ الْعَارِفِينَ وَمَحْبُوبُ رَبِّ الْعَالَمِينَ وَأَنَا افْتَخِرُ بِكَ فِي أَوْلِيَاءِ اللَّهِ تَعَالَى وَالْأَنْبِيَاءِ وَالْمُرْسَلِينَ صَلَواتُ اللهِ عَلَيْهِمْ أَجْمَعِينَ فَقَبَّلَ عَلَى جَبْهَتِي وَوَضَعَ يَدَيْهِ عَلَى صَدْرِي وَدَعَانِي بِهَذِهِ الْأَلْفَاظِ اللَّهُمَّ زِدْ مَحَبَّتَكَ وَمَعْرِفَتَكَ لِوَلَدِي هَذَا سُلْطَانِ الْعَارِفِينَ السُّلْطَانِ أَحْمَدَ الْكَبِيرِ ثُمَّ رَجَعَ إِلَى الْمَدِينَةِ الْمُشَرَّفَةِ وَأَنَا جِئْتُ مِنَ الْعَرَفَاتِ إِلَى الْوَاسِطِ وَكُلُّ مَنْ رَأَوْنِي مِنَ الْأَوْلِيَاءِ يَقُومُونَ وَيُقَبِّلُونَ يَدِي وَيَقُولُونَ يَا سُلْطَانَ الْعَارِفِينَ وَيَا سُلْطَانَ الْمَحْبُوبِينَ نَحْنُ قَبِلْنَا أَنْ تَكُونَ لَنَا سُلْطَانًا حَقًّا حَقًّا ثُمَّ جِئْتُ فِي الْبَطَائِحِ فِي قَرْيَةِ أُمَّ عُبَيْدَةَ وَكُلُّ مَنْ رَأَوْنِي يَقُولُونَ بِهَذَا الْخِطَابِ الْأَعْظَمِ ثُمَّ مَرَرْتُ بِالْمَقَابِرِ فَيَقُولُونَ السَّلَامُ عَلَيْكَ يَا غَوْثَ الْأَعْظَمِ وَيَا سُلْطَانَ السَّيِّدَ أَحْمَدَ الْكَبِيرِ رَضِيَ اللَّهُ عَنْهُ ثُمَّ أُمِرْتُ بِإِبْرَازِ هَذَا الْخِطَابِ سَبْعِينَ مَرَّةً فَأَظْهَرْتُ رَضِيَ اللَّهُ عَنْهُ وَنَفَعَنَا بِهِ فِي الدَّارَيْنِ بِفَضْلِهِ آمِينَ ';
  static const String arabic2baith1 =
    'رَضَى عَلَيْكَ اللَّهُ خَيْرَ الْأَوْلِيَا\n'
    'نَارَتْ كَرَامَاتُ الْوَلِي الْأَكْبَرِ\n'
    'قَدْ قَالَ شَيْخُ شُيُوخِنَا أَبُو الْوَفَا\n'
    'إِنِّي سَمِعْتُ الْخَضْرَ يَوْمًا قَالَ\n'
    'مُحَمَّدٌ صَلَّى عَلَيْهِ الصَّمَدُ\n'
    'يَسْئَلُ جَمِيعُ الْأَنْبِيَاءِ آخِذًا\n'
    'هَلْ عِنْدَكُمْ فِي أُمَمٍ مِنْ رَجُلٍ\n'
    'فَيَجِينُ آدَمُ عِنْدَ طَهَ مُسْرِعًا\n'
    'وَقَائِلاً بِكَ افْتَخِرُ حَبِيبَنَا\n'
    'فَخْرِي حَبِيبَ اللَّهِ يَا خَيْرَ الْوَرَى\n'
    'ثُمَّ يَجِيعُ الْأَنْبِيَاءُ جَمِيعُهُمْ\n'
    'وَالشَّيْخُ أَحْمَدُ نَوَّرَ اللهُ بِهِ\n'
    'صَلَّى عَلَيْهِ اللهُ كُلَّ لَحْظَةٍ\n'
    'رَضَى عَلَى سُلْطَانِ عُرَفَا أَحْمَدَا';

  static const String arabic2baith2 =
    'يَا مَنْ يُنَادَى سَيِّدًا وَأَحْمَدَا\n'
    'فِي الْأَرْضِ وَالْآفَاقِ مِثْلَ الْأَنْجُمِ\n'
    'قَوْلاً صَحِيحًا مَالَهُ مِنْ تُهَمِ\n'
    'يَوْمَ الْمَعَادِ سَيَفْتَخِرُذُو الْعِصَمِ\n'
    'بِالسَّيِّدِ الْكَبِيرِ بَيْنَ الْأُمَمِ\n'
    'بِيَدِي الْكَبِيرِ ابْنِ الْعَلِيِّ الْمُكْرَمِ\n'
    'لَا لَا فَوَاللَّهِ مِثْلُهُ مِنْ اَرِمِ\n'
    'مُتَصَافِحًا مُتَسَلِّمًا بِالْكَرَمِ\n'
    'بِالْوَلَدِ هَذَا أَحْمَدَ الْمُعَظَّمِ\n'
    'فِي أُمَّتِي بِكَ وَالْكَبِيرِ الْأَفْخَمِ\n'
    'وَيُصَافِحُونَ مَعَ النَّبِي ذِي الْكَرَمِ\n'
    'قَلْبِي قُلُوبَ الْحَاضِرِينَ الْفَهِمِ\n'
    'مَا طَافَتِ الْحُجَّاجُ بَيْتَ الْحَرَمِ\n'
    'مَا فَاحَ طَيِّبَةُ بِالنَّبِيِّ الْمُكْرَمِ';

  static const String arabic3 =
    'وَحُكِيَ عَنِ الشَّيْخِ إِبْرَاهِيمَ الْأَغْرَبِ رَضِيَ اللَّهُ عَنْهُ دَخَلَ يَوْمًا رَجُلٌ عَلَى قُطْبِ الْعَالَمِ بِالْإِتِّفَاقِ سُلْطَانِ الْعَارِفِينَ سَيِّدِي أَحْمَدَ الْكَبِيرِ رَضِيَ اللَّهُ عَنْهُ وَوَضَعَ لَهُ شَخْصُ طَعَامًا فَقَالَ إِذَا جَاءَ وَقْتِي أَكُلُ فَقَالَ الرَّجُلُ دُلَّنِي وَقْتَكَ يَا سَيِّدِي قَالَ بَعْدَ سَبْعِ سِنِينَ قَالَ الرَّاوِي فَسَأَلْتُهُ عَنْ سَبَبِ ذَلِكَ قَالَ سُلْطَانُ الْعَارِفِينَ دَخَلْتُ دَارًا لَنَا يَوْمًا شَدِيدَ الْحَرِّ وَأَنَا عَطْشَانُ فَوَجَدتُّ مَاءً مَخْلُوطًا بِبَيَاضِ الْعَجِينِ قَدْ فَصَلَ مِنْ مَاءِ الْعَجِينِ فَأَرَدتُ أَنْ أَشْرَبَهُ فَقَالَتْ لِي نَفْسِي يُرَى الْمَاءُ الْبَارِدُ فَامْتَنَعَتِ النَّفْسُ مِنَ الشَّرْبِ وَعَاهَدتُ اللهَ تَعَالَى أَنْ لَا أَكُلَ وَلَا أَشْرَبَ عَشَرَ سَنَةً وَهُوَ أَخَذَ مِنْ قَهْرِ نَفْسِهِ رَضِيَ اللَّهُ عَنْهُ وَكَانَ سُلْطَانُ الْعَارِفِينَ سَيِّدِي أَحْمَدُ الْكَبِيرِ عَلَامَةً نِحْرِيرًا فِي كُلِّ الْعُلُومِ خُصُوصًا فِي عِلْمِ الْكَلَامِ وَالْحَقَائِقِ وَفِي عِلْمِ التَّفَاسِيرِ وَالْأَحَادِيثِ عَلَى الْإِتِّفَاقِ وَكَانَ عَادَتُهُ فِي ابْتِدَائِهِ قَدْ يَحْفَظُ مَا يَقْرَأُ مِنَ الْكُتُبِ وَإِنْ كَانَتْ مِنَ الْمُطَوَّلَاتِ فِي مَجْلِسِ دَرْسِهِ بِالْعِنَايَاتِ وَمَنْ جَاءَ لِطَلَبِ الْعِلْمِ عَلَّمَهُ بِالْبِشَارَاتِ فَبَعْدَ مُدَّةٍ تَرَكَ الدَّرْسَ وَالتَّعْلِيمَ وَاقْتَصَرَ عَلَى الدَّعْوَةِ وَالْإِرْشَادِ إِلَى اللَّهِ الْعَلِيمِ وَلَهُ تَصَانِيفُ فَاخِرَةُ فِي الْعُلُومِ الظَّاهِرَةِ وَالْحَقَائِقِ الْبَاطِنَةِ وَلَهُ كَلَامُ عَالٍ عَلَى لِسَانِ أَهْلِ التَّحْقِيقِ رَضِيَ اللَّهُ عَنْهُ وَنَفَعَنَا بِهِ ';
  
  static const String arabic3baith1 =
    'يَا جُمُوعَ الْمَادِحِينَ\n'
    'اكْثِرُو مَدْحًا مُبِينًا\n'
    'أَنْ تُنَادُو يَا كَبِيرُ\n'
    'وَاسِعَ الْعِلْمِ الْمُنِيرُ\n'
    'اَنْتَ غَوْثُ الْعَالَمِينَا\n'
    'انْتَ مُرْشِدُ الْأَمِينَ\n'
    'اَنْتَ زَيْنُ الْأَوْلِيَاءِ\n'
    'كُنْتَ قُطْبَ الْأَصْفِيَاءِ\n'
    'رَبِّ وَارْحَمْ وَاغْفِرَنَّا\n'
    'وَسِعَنَّا وَارْزُقَنَّا';

  static const String arabic3baith2 =
    'يَا جُنُودَ الْوَاصِلِينَا\n'
    'بِقُلُوبِ الرَّاغِبِينَ\n'
    'وَاهِبَ الْخَيْرِ الْكَثِيرُ\n'
    'وَسِعَنْ عِلْمًا مُبِينًا\n'
    'أَنْتَ مُنْجِي الْهَالِكِينَ\n'
    'وَارْحَمَنَّ الْمُذْنِبِينَ\n'
    'أَنْتَ حِبُّ الْأَنْبِيَاءِ\n'
    'جُدْ لَنَا فَوْزًا قَمِينَا\n'
    'وَاعْفُ عَنَّا وَاصْلِحَنَّا\n'
    'لِجَمِيعِ الْعَالَمِينَ';

  static const String arabic4baith1 = 
  'يَا سُلْطَانَ الْعَارِفِينَ يَامُنَائِي\n'
  'يَا سُلْطَانَ السَّالِكِينَ يَا مَلاذِي\n'
  'يَا سُلْطَانَ الْعَاشِقِينَ يَا غِيَانِي\n'
  'يَا سُلْطَانَ المَعْشُوقِينَ يَا فَلَاحِي\n'
  'يَا سُلْطَانَ الْأَفْرَادِينَ يَا نَصِيرِي\n'
  'يَا سُلْطَانَ الْأَغْيَاثِ يَا ذَا الصِّيَاءِ\n'
  'يَا سُلْطَانَ الْأَبْدَالِ يَا ذَا الثَّنَاءِ\n'
  'يَا سُلْطَانَ الْأَوْتَادِ كَهْفَ الْمُرِيدِ\n'
  'يَا سُلْطَانَ الْأَوْلِيَا مُرْشِدَ النَّاسِ\n'
  'يَا سُلْطَانَ الْأَنْقِيَا وَمُقْتَدَيهُمْ\n'
  'يَا سُلْطَانَ الْأَنْقِيَا وَمُقْتَدَيهُمْ\n'
  'إِلَى الطَّرِيقِ الْمُسْتَقِيمِ مُرَبِّي\n'
  'رَضَى عَلَيْكَ الْإِلهُ كُلَّ وَقْتٍ';

  static const String arabic4baith2 = 
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ رَجَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ شِفَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ غِنَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ هَنَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ بَهَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ جَلَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ دَوَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ عَطَائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ كَلائِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ حَمَانِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ الرِّفَاعِي\n'
  'سَيِّدِي أَحْمَدَ الْكَبِيرِ رَجَائِي\n'
  'وَكُلَّ صُبْحٍ وَآنِ مَسَائِي';



  static const String arabic4 =
  'وَقَدْ رُوِيَ أَنَّ السَّيِّدَ الشَّرِيفَ السُلْطَانَ السَّيِّدَ أَحْمَدَ الْكَبِيرَ رَضِيَ اللهُ عَنْهُ قَدْ أَتَى إِلَى الْمَدِينَةِ الْمُشَرَّفَةِ لِزِيَارَةِ جَدِهِ سُلْطَانِ الْأَنْبِيَاءِ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَقَامَ عِنْدَ رَوْضَتِهِ وَانْشَدَ يَقُولُ';
  
  
  static const String arabic5 = 
  'فَعِنْدَ ذَلِكَ أَخْرَجِ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَدَهُ الْمُبَارَكَةَ الْمُعَظَّمَةَ فَقَبَّلَهَا السَّيِّدُ أَحْمَدُ الْكَبِيرُ رَضِيَ اللَّهُ عَنْهُ ثُمَّ غَابَتْ يَدُهُ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَرُوِيَ أَيْضًا أَنَّ هَذِهِ الْكَرَامَةَ مَا كَانَتْ لِأَحَدٍ مِنَ الْمَشَائِخِ الْعِظَامِ وَالْأَوْلِيَاءِ الْكِرَامِ إِلا لَهُ رَضِيَ اللَّهُ عَنْهُ وَنَفَعَنَا بِهِ وَبِهِمْ فِي الدَّارَيْنِ وَصَلَّى اللهُ عَلَى خَيْرِ خَلْقِهِ مَا لَجَأَ بِهِ اللأَجُونَ سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ وَأَوْلَادِهِ أَجْمَعِينَ ';

  static const String arabic5baith1 = 
  'رَضُوا أَحِبَّتَنَا شَوْقًا وَعِشْقًا لِمَنْ\n'
  'تَحْزَوْ بِإِدْخَالِكُمْ رَبُّ الْعُلَى كَرَمًا\n'
  'يَا رَبِّ صَلِّ عَلَى الْمَعْشُوقِ ذِي الْعِظَمِ\n'
  'وَهُوَ الَّذِي قَالَ مَأْمُورًا مِنَ الصَّمَدِ\n'
  'فِي عَصْرِهِ قَبْلَهُ وَبَعْدَهُ كُونُوا\n'
  'وَالشَّمْسُ أَنْتُمْ كَأَنْهَارٍ كَوَاكِبُهَا\n'
  'لَمْ تَحْتَجِ الشَّمْسُ وَالْبِحَارُ يَا إِخْوَتِي\n'
  'إِنِّي أَقُولُ كَمَا أُمِرْتُ مِنْ رَبِّنَا\n'
  'وَحِينَ قَالَ عَلَى رَقَبَاتِ أَقْطَابِهِمْ\n'
  'أَحْيَاءُ مِنْهُمْ بِأَجْسَادٍ وَأَمْوَاتُهُمْ\n'
  'مَنْ تَابَعُوا بِطَرِيقِ الْأَحْمَدِي فَقَدْ\n'
  'مُحِبُّ سَيِّدِنَا الرَّحْمَنُ أَدْخَلَهُ\n'
  'كَذَا لِأَوْلَادِهِ أَوْلَادِ أَوْلَادِهِ\n'
  'يَا رَبِّ اجْعَل لَّنَا أَوْلَادَنَا أَهْلَنَا\n'
  'اللهُ صَلَّى عَلَى طَهَ الشَّفِيعِ لِمَنْ\n'
  'وَالْآلِ صَحْبِ مَعَ الْأَوْلَادِ قَاطِبَةً\n'
  'غُفْرَانُ رَبِّي عَنْ الْمُدَّاحِ غَوْثَ الْوَرَى\n'
  'وَالسَّامِعِينَ وَمَنْ لِلسَّمْعِ قَدْ حَضَرُوا';

  static const String arabic5baith2 = 
  'مِنْهُ الْإِجَازَةُ لِلْأَقْطَابِ فِي الْقِدَمِ\n'
  'فِي صَحْبِ سَيِّدِنَا الْمَعْشُوقِ ذِي الْعِظَمِ\n'
  'نَسْلِ النَّبِيِّ الَّذِي قَدْ خُصَّ بِالْكَرَمِ\n'
  'بِمَحْضَرٍ كُلَّ أَقْطَابِ ذَوِي الْكَرَمِ\n'
  'إِنِّي أَنَا فِيكُمُ كَالْبَحْرِ مُلْتَطِمِ\n'
  'وَالنَّهْرُ يَحْتَاجُهُ وَالنَّجْمُ مِنْ قَرِمِ\n'
  'إِلَى الْكَوَاكِبِ وَالْأَنْهَارِ فِي الْحِكَمِ\n'
  'لَا فَخْرَ فِي هَذِهِ الْأَقْوَالِ ذِي الْحِكَمِ\n'
  'قَدَمِي فَكُلُّهُمُ قَبِلُوهُ بِالْعَزْمِ\n'
  'بِالرُّوحِ كُلُّ حَنَوْ خَضْعًا بِلَا سَدَمِ\n'
  'نَالَ الْمُنَا كُلَّهُ وَالسُّولَ وَالنِّعَمِ\n'
  'بِلَا حِسَابٍ عَذَابٍ جَنَّةَ النِّعَمِ\n'
  'حَتَّى الْقِيَامَةِ وَالْخُلَفَا أُولِي الْفَهْمِ\n'
  'إِخْوَانَنَا فِي مُرِيدِي غَوْثِنَا الشَّهْمِ\n'
  'عَصَى مِنْ أُمَّتِهِ بِالْخَطْإِ وَالْجُرُمِ\n'
  'مَا زَارَ رَوْضَتَهُ ذُوالْعِشْقِ وَالْغَرَمِ\n'
  'خَيْرَ الْمَشَائِخِ وَالْأَقْطَابِ كُلِهِم\n'
  'وَمُكْرِمِيهِمْ بِإِطْعَامِ مَعَ الْحَشَمِ';

  static const String dua1 =
  'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ اللَّهُمَّ صَلِّ وَسَلَّمْ وَبَارِكْ عَلَى سَيِّدِنَا مُحَمَّدٍ حَبِيبِكَ سَيِّدِ الْأَنْبِيَاءِ وَالْمُرْسَلِينَ كَمَا صَلَّيْتَ وَسَلَّمْتَ وَبَارَكْتَ عَلَى سَيِّدِنَا إِبْرَاهِيمَ خَلِيلِكَ يَا رَبَّ الْعَالَمِينَ اللَّهُمَّ إِنَّا نَسْأَلُكَ أَنْ تَجْعَلَنَا فِي أَصْحَابِ وَمُرِيدِي خَيْرِ الْأَوْلِيَاءِ أَجْمَعِينَ سُلْطَانِ الْعَارِفِينَ وَالصِّدِّيقِينَ سَيِّدِنَا أَحْمَدَ الْكَبِيرِ الرِّفَاعِي رَضِيَ اللَّهُ عَنْهُ اللَّهُمَّ إِنَّا قَدْ حَضَرْنَا فِي هَذَا الْمَجْلِسِ الْمُبَارَكِ الْمَيْمُونِ وَقَرَأْنَا مَدْحَ وَلِيِّكَ الْمَعْشُوقِ الْمَأْمُونِ تَمِّمْ أَحْسَنَ الثَّوَابِ وَاجْزَلَ الْجَزَاءِ عَلَى النَّاظِمِ الْمُذْنِبِ وَالْقُرَّاءِ وَالسَّامِعِينَ وَالصَّانِعِ لَهُمْ بِأَلْوَانِ الطَّعَامِ وَالشَّرَابِ بِجَاهِهِ عِنْدَكَ يَا رَبَّ الْعَالَمِينَ اللهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ الْهَادِينَ وَأَصْحَابِهِ الَّذِينَ نَصَرُوهُ وَهَاجَرُوا وَغَزَوْا مَعَهُ لِإِعْلَاءِ الدِّينِ وَأَزْوَاجِهِ أُمَّهَاتِ الْمُؤْمِنِينَ وَأَوْلَادِهِ وَاحِبَّائِهِ مَعَ سُلْطَانِ الْعَارِفِينَ وَاجْعَلْنَا لِهَدْيِهِ وَلِهَدْيِهِمْ مُتَّبِعِينَ وَنَفَعَنَا بِهِ وَبِهِمْ أَجْمَعِينَ رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَلَمِينَ آمِينَ ';


  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Rifaee Moulid',
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
                            '             بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ      ',
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiriQuran(
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
                            style: GoogleFonts.amiri(
                              fontSize: 18.0,
                              height: 2.2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),

                    // Second Container (Couplets/Baith) - Arabic Baith 1 & 2
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                      showShadow: true,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22), 
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Text('على المصطفى المختار خير البرية\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 15.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabicbaith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 15.2,
                                      height: 3,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Vertical Separator Line
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 630, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Text('صلوة وتسليم وازكى تحية\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabicbaith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 15.2,
                                      height: 3,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Third Container (Prose) - Arabic 2
                    StyledContainer(
                      text: arabic2,
                      fontSize: 18.0,
                      lineHeight: 2.2,
                      borderColor: borderColor,
                      fontWeight: FontWeight.bold,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    ),

                    // Fourth Container (Couplets/Baith) - Arabic Baith 2 (set 1 & 2)
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                      showShadow: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                              Text('يا من يسمى احمدًا ومُحمّدا\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic2baith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Vertical Separator Line - FIXED: Removed infinite height
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 710, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                              Text('صلى عليك الله يا علم الهدى\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic2baith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Fifth Container (Prose) - Arabic 3
                    StyledContainer(
                      text: arabic3,
                      fontSize: 18.0,
                      lineHeight: 2.2,
                      borderColor: borderColor,
                      fontWeight: FontWeight.bold,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    ),

                    // Sixth Container (Couplets/Baith) - Arabic Baith 3 (set 1 & 2)
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                      showShadow: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'يَا كَبِيرٌ رِضَا عَلَيْكَ\n'
                                  'الرَّحِيمُ حَيَّا عَلَيْكَ',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height:  2,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic3baith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 14.5,
                                      height: 3,
                                      wordSpacing: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Vertical Separator Line - FIXED: Removed infinite height
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 500, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'يَا وَلِي رِضَا عَلَيْكَ\n'
                                  'يَا غِيَاتُ رِضَا عَلَيْكَ',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 2,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic3baith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 14.5,
                                      height: 3,
                                      wordSpacing: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                    ],
                                  ),
                                ),
                              Text('وهو خير الأنام بدر التمام\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic4baith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      wordSpacing: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Vertical Separator Line - FIXED: Removed infinite height
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 710, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                    ],
                                  ),
                                ),
                              Text('صلواتي على النبي وسلامي\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    text: arabic4baith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      wordSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Seventh Container (Prose) - Arabic 4
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(arabic4,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.amiri(
                            fontSize: 18.0,
                            height: 2.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                                  'فِي حَالَةِ الْبُعْدِ رُوحِي كُنْتُ أُرْسِلُهَا  ۞ تُقَبِّلُ الْأَرْضَ عَنِّي وَهِيَ نَائِبَتِي\n'
                                 'فَهَذِهِ نَوْبَةُ الْأَشْبَاحِ قَدْ حَضَرَتْ ۞ فَامْدُدْ يَدَيْكَ لِكَيْ تَحْفَى بِهَا شَفَتِي',
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.amiri(
                                fontSize: 14,
                                height: 2.2,
                                wordSpacing: 3,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(arabic5,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.amiri(
                                fontSize: 18.0,
                                height: 2.2,
                                wordSpacing: 5,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                          ),
                        ],
                      ),
                    ),

                    // Eighth Container (Couplets/Baith) - Arabic Baith 4 (set 1 & 2)
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      padding:  const EdgeInsets.fromLTRB(6, 12, 6, 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    children: [
                                    ],
                                  ),
                                ),
                              Text('على حبيبك خير الخلق كلهم\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
                                  wordSpacing: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic5baith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      wordSpacing: -2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Vertical Separator Line - FIXED: Removed infinite height
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 900, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                    ],
                                  ),
                                ),
                              Text('مولاي صلى وسلم دائما ابدا\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 4.0),
                                  width: double.infinity,
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabic5baith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 16,
                                      height: 3,
                                      wordSpacing: -2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            style: GoogleFonts.amiri(
                              fontSize: 18.0,
                              height: 2.3,
                              fontWeight: FontWeight.bold,
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