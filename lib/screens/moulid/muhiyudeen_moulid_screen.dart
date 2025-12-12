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
class MuhyudeenMoulidScreen extends StatefulWidget {
  const MuhyudeenMoulidScreen({super.key});

  @override
  State<MuhyudeenMoulidScreen> createState() => _MuhyudeenMoulidScreenState();
}

class _MuhyudeenMoulidScreenState extends State<MuhyudeenMoulidScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
    'الْحَمْدُ لِلَّهِ الْعَلِي الْعَظِيمِ الْوَلِيِّ الْكَرِيمِ الَّذِي لَا يُدْرِكُ لِأَسْمَائِهِ نِهَايَةٌ وَلَا يَبْلُغُ لَهَا غَايَةٌ وَمَعَ هَذَا تَرْجِعُ مِنْ حَيْثُ أَنَّ لَهَا مَحْتِدًا إِلَى الْأُمَّهَاتِ الْأَرْبَعِ أَرْبَابِ الْعِنَايَةِ الْمَنْصُوصِ عَلَيْهَا فِي الْكِتَابِ الْحَكِيمِ بِقَوْلِهِ تَعَالَى هُوَ الْأَوَّلُ وَالْآخِرُ وَالظَّاهِرُ وَالْبَاطِنُ وَهُوَ بِكُلِّ شَيْءٍ عَلِيمٌ وَالصَّلَوةُ وَالسَّلَامُ عَلَى سَيِّدِنَا مُحَمَّدٍ خَيْرِ مَنْ الْبِسَ دِثَارَ النُّبُوَّةِ وَشِعَارَ الْوِلَايَةِ وَعَلَى آلِهِ وَأَصْحَابِهِ أَرْبَابِ الْفُتُوَّةِ وَالْهِدَايَةِ وَعَلَى خُلَفَائِهِ الرَّاشِدِينَ الْقَائِمِينَ مَقَامَهُ إِلَى يَوْمِ الدِّينِ';

  static const String arabicbaith1 =
    'الَا لِلْإِلَهِ الْحَمْدُ فِي كُلِّ لَحْظَةٍ\n'
    'لَهُ أَسْمَاءُ لَيْسَ يُدْرَكُ كُنْهُهَا\n'
    'نَعَمْ إِنَّهَا عِنْدَ اعْتِبَارِ انْتِسَابِهَا\n'
    'هِيَ الْأَوَّلُ وَالْبَاطِنُ الْآخِرُ الَّذِي\n'
    'كَمَا الْأَوَّلَانِ مَنْشَأُ لِلْوِلَايَةِ\n'
    'وَاعْظِمْ بِهَاتَيْنِ اللَّتَيْنِ عَلَيْهِمَا\n'
    'فَفِي بَعْضِ أَعْيَانٍ قَدِ انْضَمَّتَا كَمَا\n'
    'صَلَوَةً دَوَامًا مَعْ سَلَامِ مُؤَبَّدٍ\n'
    'مُحَمَّدِنِ الْمَاحِي وَآلٍ وَصَحْبِهِ\n'
    'وَعَفْو عَنِ الْمُدَّاحِ غَوْثَ الْوَرَى الَّذِي\n'
    'وسُمَّاعِهِ وَالْحَاضِرِينَ وَأَهْلِهِمْ';

  static const String arabicbaith2 =
    'عَلَى مَا حَبَانَا نِعْمَةً بَعْدَ نِعْمَةٍ\n'
    'وَلَوْ لِنَبِي أَوْ وَلِيَ بِهِمَّةٍ\n'
    'لَهَا أُمَّهَاتُ أَرْبَعُ ذَاتُ رِفْعَةٍ\n'
    'هُوَ الظَّاهِرُ فِي الْكَوْنِ مِنْ دُونِ خُفْيَةٍ\n'
    'كَذَا الْآخِرَانِ مَعْدِنُ لِلنُّبُوَّةِ\n'
    'مَدَارُ مُهِمَّاتِ الْوُجُودِ بِحِكْمَةٍ\n'
    'لِتَيْنِ افْتِرَاقُ فِي مَظَاهِرِ ثُلَّةٍ\n'
    'عَلَى خَيْرِ مَبْعُوثٍ إِلَى خَيْرٍ أُمَّةٍ\n'
    'وَوُرَّائِهِمْ وَالنَّائِبِيهِمْ بِخُلَّةٍ\n'
    'تَسَمَّى بِمُحْيِ الدِّينِ قُطْبِ الْمُقِلَّةِ\n'
    'وَمُطْعِيمِهِمْ حُبًّا لَهُ كُلَّ لَحْظَةٍ';

  static const String arabic2 = 
    'ذُكِرَ فِي خُلاصَةِ الْمَفَاخِرِ فِي اخْتِصَارِ مَنَاقِبِ الشَّيْخِ عَبْدِ الْقَادِرِ نُبْذَةً يَسِيرَةً أَنَّهُ قَدَّسَ اللَّهُ سِرَّهُ تَوَلَّدَ بِجَيْلَانَ سَنَةَ إِحْدَى وَسَبْعِينَ وَارْبَعِمِائَةٍ مِنَ الْهِجْرَةِ وَدَخَلَ بَغْدَادَ وَلَهُ مِنَ الْعُمْرِ ثَمَانِيَ عَشَرَ سَنَةً وَهُوَ أَبُو مُحَمَّدٍ عَبْدُ الْقَادِرِ بْنِ أَبِي صَالِحِ بْنِ مُوسَى بْنِ خَنْدَكُوسِ بْنِ أَبِي عَبْدِ اللَّهِ بْنِ يَحْيَى الزَّاهِدِ بْنِ مُحَمَّدِ بْنِ دَاوُدَ بْنِ مُوسَى بْنِ عَبْدِ اللَّهِ بْنِ مُوسَى الْجَوْنِ بْنِ عَبْدِ اللَّهِ الْمَحْضِ بْنِ الْحَسَنِ الْمُثَنَّى بْنِ عَبْدِ اللَّهِ بْنِ حَسَنِ بْنِ عَلِي بْنِ أَبِي طَالِبٍ كَرَّمَ اللهُ وَجْهَهُ وَكُلُّهُمُ السَّادَاتُ رَضِيَ اللَّهُ عَنْهُمْ أَجْمَعِينَ مِنْهَا مَا رُوِيَ عَنْ عَبْدِ الْحَقِّ أَنَّهُ قَالَ كُنَّا عِنْدَ الشَّيْخِ رَضِيَ اللَّهُ عَنْهُ يَوْمًا فَتَوَضَّأَ فِي قَبْقَابٍ وَصَلَّى رَكْعَتَيْنِ وَرَمَى بِفَرْدَتَيْهِ بَعْدَ مَا صَرَخَ صَرَخَتَيْنِ فَسَكَتَ بِحَالِهِ وَلَمْ يُجَاسِرْ أَحَدٌ عَلَى سُؤَالِهِ ثُمَّ قَدِمَتْ قَافِلَةٌ مِنَ الْعَجَمِ بِنَذْرِ لَهُ مِنْ ذَهَبٍ وَثِيَابِ وَكَانَ مَعَهُ ذَلِكَ الْقَبْقَابُ فَقُلْنَا أَنَّى لَكُمْ هَذَا قَالُوا بَيْنَنَا سَائِرُونَ خَرَجَتْ عَلَيْنَا طَائِفَةٌ مَعَ مُقَدَّمَيْنِ لَهُمْ مِنَ الْأَعْرَابِ فَقَتَلُوا مِنَّا وَنَهَبُوا مَعَنَا مِنَ الْأَسْبَابِ فَقُلْنَا لَوْ نَذَرْنَا لِلشَّيْخِ وَذَكَرْنَا بِكَلِمَتَيْنِ فَمَا تَمَّ ذَلِكَ إِلَّا أَنْ سَمِعْنَا صَرْخَتَيْنِ شَدِيدَتَيْنِ فَقَالَ وَاحِدٌ مِنْهُمْ تَعَالَوْا وَانْظُرُوا مَا نَزَلَ مِنَ الْقَهْرِ عَلَيْنَا فَنَظَرْنَا وَوَجَدْنَا مَعَ مُقَدَّمَيْهِمْ مَيِّتَيْنِ وَعِنْدَ كُلِّ مِنْهُمَا فَرْدَةٌ مِنْ هَاتَيْنِ هَذَا وَجَمِيعُ مَا ذُكِرَ مِنْ فَيْضِ رَسُولِ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ تَسْلِيمًا كَثِيرًا كَثِيرًا ';

  static const String arabic2baith1 =
    'يَا جُنُودَ الذَّاكِرِينَ\n'
    'أكْثِرُو ذِكْرًا مُبِينًا\n'
    'أَنْ تَقُولُوا يَا مَلَاذُ\n'
    'مِنْكُمُ لَنَا نَفَاذُ\n'
    'اَنْتَ حَقًّا مُحْيِ دِينِ\n'
    'اَنْتَ غَوْثُ كُلَّ حِينٍ\n'
    'اَنْتَ غَوْثُ الثَّقَلَيْنِ\n'
    'وَ مُنِيرُ الْمَلَوَيْنِ\n'
    'اَنْتَ اتْقَى الْأَتْقِيَاءِ\n'
    'صِرْتَ تَاجَ الْأَوْلِيَاءِ\n'
    'أَنْتَ مُبْدِئُ النَّوَادِرِ\n'
    'مُخْبِرُ مَا فِي السَّرَائِرِ\n'
    'يَا حَفِيدَ الْحَسَنَيْنِ\n'
    'يَا نَجِيبَ الْأَبَوَيْنِ\n'
    'كُنْ لَنَا كَهْفًا مَنِيعًا\n'
    'فِي خَطِيئَاتٍ وَسِيعًا\n'
    'اَنْزَلَ اللهُ سَلَامًا\n'
    'لِلَّذِي غَدَا خِتَا مَّا\n'
    'أَحْمَدٍ وَالْآلِ اَسْرَى\n'
    'مَعْ مَنِ اقْتَفَوْهُ إِثْرًا\n'
    'وَعَفَى عَنْ سَامِعِينَا\n'
    'طُعْمَهُمْ وَالْحَاضِرِينَا';

  static const String arabic2baith2 =
    'يَا شُهُودَ الْحَاضِرِينَ\n'
    'لِدَ لِيلِ الطَّالِبِينَ\n'
    'وَاسِعَ الْفَضْلِ الْمَعَاذُ\n'
    'كُنْ لَنَا عَوْنًا مُعِينًا\n'
    'اَنْتَ قُطْبُ بِالْيَقِينِ\n'
    'فَادْفَعَنْ عَنَّا حَنِينًا\n'
    'أَنْتَ زَيْنُ الْحَرَمَيْنِ\n'
    'اِجْعَل لَّنَا مُقْبِلِينَا\n'
    'أَنْتَ أَصْفَى الْأَصْفِيَاءِ\n'
    'آتِنَا فَتْحًا مُبِينًا\n'
    'مُظْهِرُ مَا فِي الضَّمَائِرِ\n'
    'رَحْمَةً دُنْيَا وَدِينًا\n'
    'يَا كَرِيمَ الطَّرَفَيْنِ\n'
    'كُنْ لَنَا حِرْزًا كَمِينًا\n'
    'عَنْ بَلِيَّاتٍ جَمِيعًا\n'
    'مِنْ عَطِيَّاتٍ تَفِينَا\n'
    'مَعْ صَلَوَاتٍ دَوَامًا\n'
    'لِجَمِيعِ الْمُرْسَلِينَا\n'
    'وَالْأُولَى اخْشَوْهُ نَصْرًا\n'
    'وَالْفَرِيقِ النَّائِبِينَا\n'
    'مَدْ حَكُمْ وَالصَّانِعِينَا\n'
    'هَيْهُنَا وَالذَّاكِرِينَا';

  static const String arabic3 =
    'قَالَ اللهُ تَعَالَى يَا أَيُّهَا الَّذِينَ آمَنُوا اتَّقُوا اللَّهَ وَابْتَغُوا إِلَيْهِ الْوَسِيلَةَ وَجَاهِدُوا فِي سَبِيلِهِ لَعَلَّكُمْ تُفْلِحُونَ نَبَّهَ اللَّهُ تَعَالَى بِهَذِهِ الْآيَةِ أَهْلَ الطَّرِيقَةِ عَلَى أَنَّ رَجَاءَ الْفَلَاحِ الْحَقِيقِي مُتَوَقَّفُ عَلَى أَرْبَعَةِ أَعْمَالٍ مِنَ الدَّقَائِقِ أَحَدُهَا الْإِيمَانُ الْمُتَؤَكَّدُ بِالْبُرْهَانِ الْمُتَأَيَّدُ بِالْمُكَاشَفَةِ وَالْعِيَانِ الَّذِي يَخْرُجُ بِهِ الْعَبْدُ مِنْ أَقْسَامِ الشِّرْكِ وَالطَّغْيَانِ الثَّانِي التَّقْوَى بِثَلَاثَةِ أَنْوَاعِهَا الْأَدْنَى تَجَنُّبُ الْمُؤْمِنِ لِلْعِصْيَانِ وَالْأَوْسَطُ الَّذِي هُوَ تَحَفَّظُ السَّالِكِ عَنِ النِّسْيَانِ وَالْأَعْلَى الَّذِي هُوَ جَعْلُ الْعَارِفِ رَبَّهُ فِي مَوَارِدِ السِّرِّ وِقَايَةً لِحَضْرَةِ قُدْسِهِ وَالثَّالِثُ ابْتِغَاءُ الْوَسِيلَةِ بِنَوْعِهَا الْأَعَمِّ الَّذِي هُوَ تَقْدِيمُ الْأَعْمَالِ الْحَسَنَةِ وَتَقْوِيمُ الْأَفْعَالِ الْمُسْتَحْسَنَةِ وَالْأَخَصُّ الَّذِي هُوَ اتِّخَاذُ الطَّالِبِ لِنَفْسِهِ مِنَ الْهُدَاةِ الْكُمَّلِ خَلِيلًا لِيَكُونَ لَهُ دَلِيلاً وَالرَّابِعُ الْجِهَادُ بِنَوْعِهَا الْأَصْغَرِ الَّذِي هُوَ مُحَارَبَةُ أَعْدَاءِ الدِّينِ الْخَلْقِ وَالدُّنْيَا وَالشَّيْطَانِ الَّذِينَ يَدْعُونَ الْإِنْسَانَ إِلَى مَظَانِ الْخُسْرَانِ وَالْخِذْلانِ وَالْعِصْيَانِ وَالْأَكْبَرُ الَّذِي هُوَ مُخَالَفَةُ النَّفْسِ فِي حُبِّ الشَّهَوَاتِ بِتَزْكِيَتِهَا عَنْ الأَخْلَاقِ النَّمِيمَةِ وَبِتَحْلِيَتِهَا بِالْأَوْصَافِ السَّلِيمَةِ وَصَلَّى اللهُ وَسَلَّمَ عَلَى سَيِّدِنَا مُحَمَّدٍ خَيْرِ مَنْ أُوتِيَ الْحِكْمَةَ وَفَصْلَ الْخِطَابِ وَعَلَى الْآلِ وَالْأَصْحَابِ وَالْأَوْلِيَاءِ وَالْأَقْطَابِ ';

  static const String arabic3baith1 =
    'سَقَانِي الشَّوْقُ كَاسَاتِ الْفَنَاءِ\n'
    'سَعَتْ وَآتَتْ بِإِثْرِي فِي شَبَابٍ\n'
    'فَقُلْتُ لِفِرْقَةِ الْأَقْطَابِ قُومُو\n'
    'وَفُوزُوا وَاصِلُوا أَنْتُمْ جُنُودِي\n'
    'أَخَذْتُمْ فَضْلَتِي مِنْ بَعْدِ وَجْدِي\n'
    'مَقَامُكُمُ الْهُدَى طُرًّا وَلَكِنْ\n'
    'أَنَا فِي حَضْرَةِ التَّوْصِيلِ فَرْدِي\n'
    'انَا الْعَالِي بِعُلْمٍ كُلَّ قُطْبٍ\n'
    'أَتَانِي خِلْعَةٌ بِطِرَازِ قُرْبِ\n'
    'وَاشْرَفَنِي عَلَى سِرٍ خَفِي\n'
    'وَوَلا نِي عَلَى التَّوَّابِ طُرًّا\n'
    'وَلَوْ أَظْهَرْتُ عِشْقِي فِي بِحَارٍ\n'
    'وَلَوْ الْهَمْتُ شَوْقِي فِي جِبَالٍ\n'
    'وَلَوْ الْقَيْتُ ذَوْقِي فَوْقَ نَارٍ\n'
    'وَلَوْ اسْمَعْتُ سِرِّي سَمْعَ مَيْتٍ\n'
    'وَمَا مِنَّا السَّرَائِرَ وَالْخَفَايَا\n'
    'وَأَخْبَرَنِي بِمَا يَأْتِي وَيَجْرِي\n'
    'مُرِيدِي عِشْ وَدُمْ وَافْرِغْ وَغَنِّي\n'
    'مُرِيدِي لَا تَخَفْ رَبِّي كَرِيمٌ\n'
    'شُمُوسِي أَشْرَقَتْ عُلُوًّا وَسُفْلاً\n'
    'جُيُوشُ اللَّهِ جُنْدِي تَحْتَ حُكْمِي\n'
    'رَأَيْتُ إِلَى بِلادِ اللهِ طُرًّا\n'
    'وَكُلُّ وَلي لَهُ قَلْبُ وَإِنِّي\n'
    'وَاسْمِي اِسْمُ خَيْرِ الْأَنْبِيَاءِ\n'
    'الَهِي سَيِّدِي صَلِّ وَسَلَّمْ\n'
    'وَأَصْحَابِ وَتُبَاعِ جَمِيعًا\n'
    'الَهِي فَاعْفُونْ لِأَبِي وَأُتِي\n'
    'وَمُدًا حًا وَسُمَّاعًا وَحُضًا\n'
    'إِلَهِي عَبْدَكَ الْمِسْكِينَ فَارْحَمْ';

  static const String arabic3baith2 =
    'فَقُلْتُ بِسُكْرَتِي فَوْقَ الْبَقَاءِ\n'
    'فَهِمْتُ بِعِشْقَتِي بَيْنَ الرَّوَاءِ\n'
    'بِحَالِي وَادْخُلُوا بَيْنَ اللِّقَاءِ\n'
    'فَبَابُ الْوَصْلِ يُفْتَحُ بِالدُّعَاءِ\n'
    'وَلَا نِلْتُمْ مَقَامِي وَالْعَطَاءِ\n'
    'مَقَامِي فِي التَّفَوُّقِ وَالْعَلَاءِ\n'
    'يُقَلِّبُنِي وَحَسْبِي ذُو السَّمَاءِ\n'
    'وَنَسْتَوْفِي الْكَمَالَ مِنَ الْعَمَاءِ\n'
    'وَأَكْرَمَنِي بِتِيجَانِ الْوَفَاءِ\n'
    'وَعَزَّزَنِي بِإِعْطَاءِ الْفَنَاءِ\n'
    'فَأَمْرِي نَافِذُ فِي كُلِّ دَاءٍ\n'
    'لَكَانَ الْكُلُّ غَوْرًا فِي الْفَنَاءِ\n'
    'لَمَرَّتْ كَالسَّحَابِ عَلَى الْهَوَاءِ\n'
    'لَخَمَدَتْ وَاخْتَفَتْ حَقَّ الْخَفَاءِ\n'
    'لَقَامَ وَصَارَ حَيًّا بِالنِّدَاءِ\n'
    'تَرَى بِالْقَوْمِ إِلَّا بِالرِّضَاءِ\n'
    'وَاعْلَمَنِي الْعُلُومَ وَبِالْوِلَاءِ\n'
    'وَاسْمِي مُدْخَلٌ تَحْتَ اللَّوَاءِ\n'
    'هَدَانِي لِلْوُصُولِ مَعَ الْبَهَاءِ\n'
    'وَأَعْلَامِي عَلَى رَأْسِ الْبِنَاءِ\n'
    'وَوَقْتِي قَدصَّفَا كُلَّ الصَّفَاءِ\n'
    'بِحُكْمِ الْوَصْلِ خَرْدَلَةَ الْهَوَاءِ\n'
    'عَلَى قَلْبِ الْمُحَمَّدِ ذِي السَّنَاءِ\n'
    'وَأَحْوَالِي تُؤَثِرُ فِي الْحَشَاءِ\n'
    'عَلَى طَهَ وَآلٍ بِالْوِلَاءِ\n'
    'بِمَا ضَاءَتْ نُجُومُ فِي السَّمَاءِ\n'
    'وَاسْتَاذِي بِحُرْمَةِ ذِي السَّنَاءِ\n'
    'رَنِ الْمُطْعِمَ دَوْمًا بِالْبَقَاءِ\n'
    'بِغُفْرَانِ الذُّنُوبِ وَبِالْفَنَاءِ';

  static const String dua1 =
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ اللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ اللَّهُمَّ إِنَّا نَحْنُ عَبِيدُكَ الْفُقَرَاءُ وَبِحِبَالِ الْأَهْوَاءِ أَسَرَاءُ حَضَرْنَا هَذَا الْمَجْلِسَ الْعَاطِرَةَ وَقَرَأْنَا بِإِذْنِ صَاحِبِهِ مَنَاقِبَ وَلِيِّكَ عَبْدِ الْقَادِرِ فَبِجَاهِهِ لَدَيْكَ وَبِقُرْبِهِ إِلَيْكَ وَفَقْنَا لِلْإِقْتِدَاءِ بِهِ وَسَائِرِ الْأَوْلِيَاءِ وَامْتِثَالِ الْمَأْمُورَاتِ وَاجْتِنَابِ الْمَحْظُورَاتِ وَاحْفَظْ ظَوَاهِرَنَا عَنِ الْعَثَرَاتِ رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَيْنَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ أَجْمَعِينَ';


  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Muhyudeen Moulid',
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

                    // Second Container (Couplets/Baith) - Arabic Baith 1 & 2
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 6, 16, 6),
                      showShadow: true,
                      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 22), 
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Text('عَلَى الْمُصْطَفَى الْمُخْتَارِ خَيْرِ الْبَرِيَّةِ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lateef(
                                  fontSize: 20,
                                  color: Colors.redAccent,
                                ),
                                ),
                                Container(
                                  height: 1,
                                  color: borderColor,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 2.0),
                                  width: double.infinity,
                                ),
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: arabicbaith2,
                                    style: GoogleFonts.lateef(
                                      fontSize: 22,
                                      height: 2.5,
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
                            height: 660, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Text('صَلوةٌ  وَتَسْلِيمُ  وَأَزْكَى  تَحِيَّةٍ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lateef(
                                  fontSize: 20,
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 22,
                                      height: 2.5,
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
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Text.rich(
                        TextSpan(
                          text: arabic2,
                          style: GoogleFonts.lateef(
                            fontSize: 26,
                            height: 1.6,
                            wordSpacing: 2,
                          ),
                        ),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                      ),
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
                              Text(
                                'الله الله حسبنا الله\n'
                                'ذلك فضل من الله',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lateef(
                                  fontSize: 22,
                                  wordSpacing: 5,
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 22,
                                      height: 2,
                                      wordSpacing: 10,
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
                            height: 1030, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                              Text(
                                'الله الله ربنا الله\n'
                                'نحمد الله نشكر الله',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lateef(
                                  fontSize: 22,
                                  wordSpacing: 5,
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 22,
                                      height: 2,
                                      wordSpacing: 10,
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
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Text.rich(
                        TextSpan(
                          text: arabic3,
                          style: GoogleFonts.lateef(
                            fontSize: 26,
                            height: 1.6,
                            wordSpacing: 2,
                          ),
                        ),
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                      ),
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
                                Text('الهي توبة قبل الممات\n',
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
                                    text: arabic3baith2,
                                    style: GoogleFonts.amiri(
                                      fontSize: 14.5,
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
                            height: 1280, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text('الهي يا الهي يا الهي\n',
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
                                    text: arabic3baith1,
                                    style: GoogleFonts.amiri(
                                      fontSize: 14.5,
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
                            'تم مناقب الشيخ محي الدين',
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.amiriQuran(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                          const SizedBox(height: 20),
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