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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),  // Reduced vertical padding
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
class AjmeerMoulidScreen extends StatefulWidget {
  const AjmeerMoulidScreen({super.key});

  @override
  State<AjmeerMoulidScreen> createState() => _AjmeerMoulidScreenState();
}

class _AjmeerMoulidScreenState extends State<AjmeerMoulidScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
      'الْحَمْدُ لِلَّهِ الَّذِي خَلَقَ الإِنْسَانَ وَعَلَّمَهُ البَيَانَ وَبَعَثَ مِنْهُمْ مَنْ يَهْدِي إِلَى الْإِحْسَانِ وَخَتَمَ النُّبُوَّةَ بِالرَّسُولِ المَبْعُوثِ فِي آخِرِ الزَّمَانِ وَالْمُنَزَّلِ عَلَيْهِ سُورَةُ الْفُرْقَانِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ الْمُخْتَارِ مِنْ مَعَدَّ بْنِ عَدْنَانُ الَّذِي أَظْهَرَ الْعَدْلَ وَأَمَاتَ الطَّغْيَانَ وَأَكَبَّ الْبَاطِلَ وَالْعِصْيَانَ وَأَبَادَ الْبُهْتَانَ وَعِبَادَةَ الأَوْثَانِ وَمَيَّزَ الْخَلِيقَةَ إِلَى جَنَّةٍ وَرِضْوَانٍ أَوْ إِلَى حُفْرَةٍ مِنَ النِّيرَانِ وَاصْطَفَى مِنْ أُمَّتِهِ مَنْ يَقُومُ بِمَا وَرَدَ بِهِ الْقُرْءَانُ إِلَى يَوْمِ الْبَعْثِ وَالْحُسْبَانِ وَخَلَّصَ مِنْهُمْ مَنْ يُظْهِرُ الْحَقَّ بِمَرَاتِبِ التَّبْيَانِ مِنَ الأَوْلِيَاءِ وَالأَقْطَابِ وَالأَغْيَاتِ وَالْأَعْوَانِ وَمِنْ جُمْلَتِهِمْ مَنْ قَامَ بِقِيَادَةِ أَنَاسِ الْهِنْدِ إِلَى أَرْشَدِ الْأَدْيَانِ وَغَيْرِهَا مِنَ الْبُلْدَانِ الْمُنْهَمِكِينَ عَلَى عِبَادَةِ الْأَصْنَامِ وَالْحَيَوَانِ وَإِشَاعَةِ الإِسْلَامِ وَالإِيمَانِ فِي تِلْكَ الْأَحْيَانِ وَالْأَقْرَانِ وَأَوْقَدَ لَهُ وُقُودَ مَحَارِبِ النِّيرَانِ حَتَّى دَخَلَ النَّاسُ فِي دِينِ اللَّهِ أَفْوَاجًا بِالْإِيمَانِ وَالْإِتْقَانِ الشَّيْخُ الْوَلِيُّ قُطْبُ الزَّمَانِ وَسُلْطَانُ الْهِنْدِ مَوْلَانَا غَرِيبٌ نَوَازُ خَاجًا مُعِينُ الدِّينِ الْجِشْتِي الْحَسَنُ السَّنْجَرِي الأَجْمِيرِي قَدَّسَ اللَّهُ سِرَّهُ الْمُسْتَعَانُ وَنَفَعَنَا بِعُلُومِهِ وَأَنْوَارِهِ وَبَرَكَاتِهِ فِي الدُّنْيَا وَفِي دَارِ الْحَيْرَانِ وَصَلَّى اللهُ وَسَلَّمَ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِهِ وَصَحْبِهِ وَمَنِ تَّبَعَهُمْ بِإِحْسَانٍ مَا دَامَ النَّجْمُ وَالشَّجَرُ يَسْجُدَانِ ';

  static const String arabicbaith1 =
      'حَمِدتُ  إِلَهِي  كُلَّ  يَوْمٍ  وَلَيْلَةٍ\n'
      'وَنَشْكُرُهُ  شُكْرًا  يَفِي  كُلَّ نِعْمَةٍ\n'
      'وَمَنْ رَامَ يُوفِيهَا بِحُسْنِ الْمَقَالَةِ\n'
      'وَأَرْسَلَ خَيْرَ النَّاسِ كُلِّ الْخَلِيقَةِ\n'
      'وَأُمَّتُهُ قَدْ  أُخْرِجَتْ خَيْرَ أُمَّةِ\n'
      'وَفَضَّلَ مِنْهَا بَعْضَ أَهْلِ الْعِنَايَةِ\n'
      'وَلا رَيْبَ مِنْهُمْ قُطْبُ هِنْدِ الْحُكُومَةِ\n'
      'مِنَ الْعَرَبِ قَدْ جَا مِنْ أَوَامِرِ رَوْضَةٍ\n'
      'وَقَاتَلَ أَهْلَ الزَّيْغِ مِنْ بَعْدِنُزْلَةٍ\n'
      'وَلَمَّا قَضَى مَا قَدْ تَوَلَّى بِدَوْلَةٍ\n'
      'أَفَاضَ عَلَيْنَا اللَّهُ مِنْ فَضْلِ بَرَكَةٍ\n'
      'وَصَلَّى عَلَى خَتْمِ الرِّسَالَةِ دَوْمَةٍ\n';

  static const String arabicbaith2 =
      'عَلَى مَا  هَدَانَا  لِلطَّرِيقِ  الْقَوِيمَةِ\n'
      'وَلَا يُنْهِهَا  حَدُّ  وَعَدُّ  النَّهَايَةِ\n'
      'فَلَا رَيْبَ تَعْلُوهَا بِزَيْدِ  الإِطَاقَةِ\n'
      'رَفِيقًا  شَفِيعًا  رَحْمَةً  لِلْبَرِيَّةِ\n'
      'لِدِينِ الْهُدَى يَهْدُونَ حَتَّى الْقِيَمَةِ\n'
      'بِإِعْطَا وِلَآيَاتٍ وَنَيْلِ الْكَرَامَةِ\n'
      'فَخَاجَا مُعِينُ الدِّينِ أَجْمِيرَ بَلْدَة\n'
      'لِخَيْرِ الْوَرَى طُرًّا مَقَامًا لِدَعْوَةِ\n'
      'لِإِعْلَاءِ كَلِمَاتِ الْإِلَهِ بِوَحْدَةٍ\n'
      'ثَوَى فِي تَرَى الْأَجْمِيرِ جَوْدَ الْوِلَايَةِ\n'
      'بِرِضْوَانِهِ عَنْهُ بِدَارِ السَّلَامَةِ\n'
      'وَسَلَّمَ عَلَى آلِ وَصَحْبِ وَقُدْوَةٍ\n';

  static const String arabic2 = 'وَوُلِدَ رَضِيَ اللَّهُ عَنْهُ فِي بَلْدَةِ سَنْجَرَ مِنْ مَمَالِيكِ إِصْفَهَانَ وَخُرَاسَانَ كَمَا عُلِمَ مِنْ دِيوَانِ بَعْضِ الْإِخْوَانِ سَنَةَ سَبْعِ وَثَلاثِينَ وَخَمْسَمِأَةٍ مِنَ الْهِجْرَةِ صَبِيحَةَ يَوْمِ الْإِثْنَيْنِ الرَّابِعَ عَشَرَ مِنْ رَجَبٍ وَهُوَابْنُ الشَّيْخِ غِيَاثِ الدِّينِ أَحْمَدَ السَّنْجَرِي بْنِ حُسَيْنِ أَحْمَدَ بْنِ نَجْمِ الدِّينِ طَاهِرِ بْنِ عَبْدِ الْعَزِيزِ حُسَيْنِ بْنِ مُحَمَّدِ الْمَهْدِي حَسَنِ الْعَسْكَرِي بْنِ عَلِيَّ الْهَادِي بْنِ مُحَمَّدِ الْجَوَادِ بْنِ عَلِيَّ الرِّضَا بْنِ مُوسَى الْكَاظِمِ بْنِ جَعْفَرِ الصَّادِقِ بْنِ مُحَمَّدِ الْبَاقِرِ بْنِ عَلِيَّ زَيْنِ الْعَابِدِينِ بْنِ الْإِمَامِ الْحُسَيْنِ سِبْطِ خَاتِمِ الْمُرْسَلِينَ بْنِ الْإِمَامِ عَلَيَّ كَرَّمَ اللَّهُ وَجْهَهُ وَابْنُ سَيِّدَتِنَا أُمَّ الْوَرَعِ مَاهُ نُورُ رَحِمَهَا اللهُ تَعَالَى بِنْتِ السَّيِّدِ دَاوُدَ بْنِ السَّيِّدِ عَبْدِ اللَّهِ الْحَنْبَلِي مِنْ بَطْنِ الْحَسَنِ بْنِ الْإِمَامِ عَلَيَّ زَوْجٍ بِنْتِ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ السَّيِّدَةِ فَاطِمَةَ الْكُبْرَى الَّتِي قَالَ فِي فَضْلِهَا رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَاطِمَةُ بِضْعَةٌ مِنِّي فَهِيَ قَطْرَةً مِنْ دَمِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ شَفِيعِ الْمُذْنِبِينَ وَمَحَبَّةُ أَهْلِهِ وَعِتْرَتِهِ وَاجِبَةٌ عَلَى أُمَّتِهِ وَعَلَى جَمِيعِ الْمُؤْمِنِينَ قَالَ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَنْ أَحَبَّ أَهْلَ بَيْتِي فَبِحُبِّي أَحَبَّهُمْ وَمَنْ أَبْغَضَهُمْ فَبِبُغْضِي أَبْغَضَهُمْ جَعَلَنَا مِنْ الْمُحِيِّينَ وَالْمُهْتَدِينَ وَلَمَّا بَلَغَ إِحْدَى عَشْرَةَ سَنَةً تُوُفِّيَ وَالِدَاهُ وَبَقِيَ لَهُ مِنَ التَّرِكَةِ بُسْتَانٌ وَأَنْفَقَهُ فِي سَبِيلِ اللَّهِ مَعَ مَا عِنْدَهُ مِنْ بَضَائِعِ الْأَلْوَانِ وَابْتَغَى مِنَ اللَّهِ التَّقَرُّبَ وَالْوُصُولَ بِهَجْرَانِ مَا يُذَلُّ عِنْدَ الرَّحْمَنِ ثُمَّ تَوَجَّهَ إِلَى بُخَارَى لِتَحْصِيلِ الْعُلُومِ الدِّينِيَّةِ وَأَسْرَارِ السُّنَّةِ وَالْقُرْءَانِ وَأَمْضَى فِيهِ عِدَّةً مِنَ الْأَزْمَانِ وَحَفِظَ الْقُرْءَانَ مِنَ الشَّيْخِ الْفَاضِلِ حُسَامِ الدِّينِ الْبُخَارِي قُدَّسَ سِرُّهُ وَتَمَهَّرَ فِيهِ ثُمَّ ارْتَحَلَ وَاجْتَهَدَ فِي تَخْرِيجٍ أَنْوَارِ الْعِرْفَانِ مِنْ بِحَارِ الرِّيَاضَاتِ وَالْمُرَاقَبَاتِ وَالْإِتْقَانِ حَتَّى بَلَغَ مِنَ الْمَلِكِ الدَّيَّانِ';

  static const String arabic2baith1 =
      'بَدَتْ لَنَا فِي رَبِيعٍ غَوْثُ مُفْتَخَرٍ\n'
      'لأَزَالَ مُرْتَقِيًّا  أَعْلَى  مَقَامِ  عُلاَ\n'
      'سِبْطُ الإِمَامِ عَلَيَّ بِنْتِ خَيْرِ الْوَرَى\n'
      'كَمْ مِنْ مَرِيضٍ شُفِي بِنَيْلِ بَرَكَتِهِ\n'
      'كَمْ مِنْ مَدِينٍ نَجَا مِنْ دَيْنِهِ أَسْرًا\n'
      'كَمْ  وَاجِدٍ خَيْرَ مَأْمُولٍ بِحَضْرَتِهِ\n'
      'كَمْ مِنْ طَلِيقٍ رِقَابَ الْقَيْدِ مُحْتَقِرًا\n'
      'تَسْعَى إِلَيْهِ  مِنَ  الْآفَاتِ  قَافِلَةٌ\n'
      'تَدْعُو وَتَرْجِعُ بِالْأَمَالِ مُسْرِعَةً\n'
      'يَا رَبَّنَا جُدْ لَنَا مِنْ فَضْلِ رَحْمَتِهِ\n'
      'وَاسْمَحْ لَنَا مَا مَضَى بِجَاهِ حَضْرَتِهِ\n'
      'حَصِّلْ  مَقَاصِدَنَا   بِنُورِ   بَرَكَتِهِ\n'
      'وَاغْفِرْ  لِنَاظِمِ  ذَا  مَعْ مَحْوِ زَلَّتِهِ\n'
      'أَنِلْ  مَرَامًا  لِمَنْ  يَنْوِي  بِمَنْقِبِهِ\n'
      'ثُمَّ الصَّلَاةُ  مَعَ  التَّسْلِيمِ  دَائِمَةً\n'
      'لِيَوْمٍ حَشْرٍ عَلَى الْمُخْتَارِ وَالْكُرَمَا\n'
      'يَارَبِّ فَاقْبَلْ دُعَائِي بِالْمَدِيحِ هُنَا\n';

  static const String arabic2baith2 =
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الْإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الْإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n'
      'قُطْبُ الإِلَهِ مُعِينُ الدِّينِ أَجْمِيرِي\n';

  static const String arabic3 =
      'وَحُكِي عَنِ الشَّيْخِ رَضِيَ اللَّهُ عَنْهُ أَنَّهُ اشْتَاقَ إِلَى زِيَارَةِ سَيِّدِ الْمُرْسَلِينَ فَتَوَجَّهَ مِنْ بَغْدَادَ مَعَ بَعْضِ مُرِيدِهِ الْمُحِبِّينَ إِلَى الطَّيْبَةِ الْمَدِينَةِ رَوْضَةِ أَشْرَفِ الْمَخْلُوقِينَ فَبَيْنَمَا هُوَ فِي حَضْرَةِ الْمَقَامِ نُودِيَ مِنَ الرَّوْضَةِ الْمُشَرَّفَةِ أَنِ ادْخُلْ يَا مُعِينَ الدِّينِ فَدَخَلَ مُسَلَّمًا وَمُبَجِّلاً وَسَمِعَ رَدَّ التَّحِيَّةِ وَالْمَقَالَةَ بِأَنِّي وَضَعْتُ عَلَى رَأْسِكَ تَاجَ الْوِلَايَةِ فَارْتَحِلْ بِهَا إِلَى هِنْدِسْتَانَ وَاجْعَلْ مَوْطِنَكَ فِيهَا بِبَلْدَةِ أَجْمِيرْ فِي بَاقِي الْأَزْمَانِ وَسَتُوَفَّى وَتُدْفَنُ فِيهَا وَيَتَبَرَّكُ بِكَ الْإِخْوَانُ وَكُشِفَتْ لَهُ مُرْتَحَلُهُ وَمَقَاصِدُهُ وَحَصَلَتْ مِنْ حَضْرَةِ الْمُصْطَفَى فَاكِهَةَ رُمَّانٍ مِنَ الْجِنَانِ وَأَمَرَهُ بِالدَّعْوَةِ وَإِرْشَادِ مَنْ كَثُرَ عِنَادُهُمْ وَطُغْيَانُهُمْ مِنَ الْهُنُودِ لِدِينِ الأَمَانِ فَانْتَهَى إِلَى الْأَجْمِيرِ وَمَكَثَ فِيهَا مِنَ الْأَعْوَامِ أَرْبَعِينَ سِنِينَ يَدْعُو النَّاسَ إِلَى دِينِ اللهِ وَيُقَاتِلُ أَعْدَانَهُ حَتَّى أَنْ نَادَاهُ مُنَادِى أَحْسَنِ الْخَالِقِينَ نَوَّرَ اللَّهُ مَرْقَدَهُ ذُو القُوَّةِ الْمَتِينِ وَأَمَّا كَرَامَاتُهُ وَآثَارُ بَرَكَتِهِ فَهِيَ شَهِيرَةٌ كَثِيرَةٌ وَلَا نَقْدِرُ عَلَى اسْتِكْمَالِهَ أَوْطَرَفٍ مِنْهَا بِالْبَيَانِ مُنْتَشِرَةٌ فِي نَوَاحِيَ الْهِنْدِ وَخَارِجَ الْبُلْدَانِ يَلْتَجِئُ إِلَيْهَا كُلَّ يَوْمٍ وَلَيْلَةٍ جَمُّ غَفِيرٌ مِنَ الرَّاغِبِينَ مِنَ الْكُفَّارِ وَالْمُسْلِمِينَ وَتَتَابَعُ الزَّيَارَاتُ وَالصَّدَقَاتُ بِلا تَأَنَّ وَلَا تَوَانٍ وَيَرْجِعُونَ بِنَيْلِ مَآمِلِهِمْ وَدَفْعِ آفَاتِهِمْ وَأَسْقَامِهِمْ فَرِحِينَ مُسْتَبْشِرِينَ وَيَتَلَقَّى بَعْضُ الْخَوَاصٌ بَعْضَ الْوِلايَةِ وَالْإِجَازَةِ وَالتَّزْكِيَةِ وَبِالْكَرَامَةِ آثِلِينَ وَبِالْجُمْلَةِ إِنَّهُ قُطْبُ مِنْ أَقْطَابِ اللَّهِ فِي الْهِنْدِ وَسُلْطَانُ الصَّالِحِينَ وَرَئِيسُ الْعَارِفِينَ وَمَلْجَأُ اللأَجِئِينَ أَفَاضَ اللَّهُ عَلَيْنَا مِنْ فَيْضِهِ الْمُبِينِ وَالْمُرَاقَبَاتِ وَالإِتْقَانِ حَتَّى بَلَغَ مِنَ الْمَلِكِ الدَّيَّانِ ';

  static const String arabic3baith1 =
      'يَا مَلَاذَ   الْخَائِفِينَ   وَالنَّجَاءِ\n'
      'كُنْتَ قُطْبًا   فِي نُطْفَةِ   الأَبَوَاءِ\n'
      'قَلَّبْتَ  تُرْبَةَ  هِنْدِ  الْأَعْدَاءِ\n'
      'سُمِّيتَ مِنْ جَدِّكَ بِاسْمِ العَطَاءِ\n'
      'بَا هَتْ  بِكَ  أَقْوَامٌ  مِنْ  كُرَمَاءِ\n'
      'انْتَ غَيْتُ  مُغِيثُ  وَقْتَ  الْعَنَاءِ\n'
      'كَمْ مِنْ مَرْضَى يُشْفَى بِأَخْفَى الدَّوَاءِ\n'
      'كَمْ مِنْ رَاجِ يَرْجُو كَشْفَ الدَّهْيَاءِ\n'
      'نَرْجُو  بِالْإِلَهِ  دَفْعَ  الْبَلَاءِ\n'
      'عَفْوًا عَنِ الزَّلَاتِ عَيْشَ الصَّفَاءِ\n'
      'وَأَحْبَابِ   وَأَشْيَاخِنَا   الْكُرَمَاءِ\n'
      'رَبِّ صَلِّ سَلَّمْ  عَلَى ذِي اللَّوَاءِ\n'
      'مَا دَامَتْ قَطْرَاتُ مِنْ جَوَ السَّمَاءِ\n';

  static const String arabic3baith2 =
      'يَا شَيْخَنَا مُعِينَ الدِّينِ مُنَائِي\n'
      'جِئْتَنَا  تَهْدِينَا  لِدِينِ الْهَنَاءِ\n'
      'مِسْكًا  يَفُوحُ  بِهِ  أَهْلَ الثَّنَاءِ\n'
      'مُعِينِ  الدِّينِ  تَاجِ  لِلأَوْلِيَاءِ\n'
      'يَأْوِي  إِلَيْكَ  وُفُودُ  الْأَرْجَاءِ\n'
      'نُورٌ  مُنِيرٌ  ظُلْمَةَ  الْجُهَلَاءِ\n'
      'كَبَّتْ لَدَيْهِمْ عُقُولُ الْأَطِبَّاءِ\n'
      'مِنْ جُودِكَ نَالُوا مِنْ خَيْرِ الْإِبَاءِ\n'
      'وَنَيْلَ الْقَصْدِ  وَالْمُنَا  الثَّرْوَاءِ\n'
      'مَعْ وَالِدِ أَوْلَادِ وَالْأَقْرِبَاءِ\n'
      'أَنْصَارِنَا  جِيرَانِنَا  الْأَوْصِيَاءِ\n'
      'وَآلِهِ وَالصَّحْبِ ذِي الْإِقْتِفَاءِ\n'
      'تَنْزِلْ بِهَا  تَزْهُو  وَجْهُ الْغَبْرَاءِ\n';

  static const String arabic4 =
      'وَوَجَدْنَا فِي سِيرَةِ مَنَاقِبِهِ أَنَّ الْوَلِيُّ رَضِيَ اللَّهُ عَنْهُ كَانَ يُسَافِرُ إِلَى مَكَّةَ كُلَّ لَيْلَةٍ بَعْدَ الْعِشَاءِ يَطُوفُ الْكَعْبَةَ وَيَرْجِعُ قَبْلَ الْفَجْرِ إِلَى أَجْمِيرَ وَقَدْ شَاعَ هَذَا الْخَبَرُ فِي الْبِلَادِ أَيْضًا مِنْ أَجَلٌ مَا أَعْطَاهُ اللهُ الْمُقْتَدِرُ وَتُوُفِّيَ رَضِيَ اللَّهُ عَنْهُ لَيْلَةَ الإِثْنَيْنِ وَقْتَ السَّحَرِ السَّادِسَ مِنْ شَهْرِ رَجَبٍ مُضَرْ سَنَةَ الثَّالِثَةَ وَالثَّلَاثِينَ وَسِتَمِأَةٍ مِنْ هِجْرَةِ سَيِّدِ الْبَشَرِ وَلَهُ سِتَّةٌ وَتِسْعُونَ مِنَ الْعُمُرِ وَدُفِنَ فِي مَسْكَنِهِ مِنَ الْحُجَرِ وَلَهُ مِنَ الْكَرَامَاتِ مَا لَا تُحَدُّ وَلَا تُحْصَرُ وَهَذِهِ مِنْ لَّدُنْ إِلَى الْآنَ مُسْتَمِرٌّ فَنَقْتَصِرُ عَلَى مَا ذُكِرَ إِنَّ فِي ذَلِكَ لَذِكْرَى فَهَلْ مِنْ مُدَّكِرٍ وَصَلَّى وَسَلَّمَ عَلَى سَيِّدِنَا صَاحِبِ الشَّفَاعَةِ وَالْحَوْضِ الْكَوْثَرِ وَعَلَى آلِهِ وَصَحَابَتِهِ وَتُبَّاعِهِ مَا دَامَتِ الْكَائِنَاتُ تُسَبِّحُ فِي الْآصَالِ وَالْبُكَرِ جَمَعَنَا اللَّهُ وَإِيَّاهُمْ فِي مَقْعَدِ صِدْقٍ عِنْدَ مَلِيكٍ مُقْتَدِرٍ وَسَلَّمَنَا مِنَ الْآفَاتِ وَالسَّقَرِ وَبَلَّغَنَا إِلَى مَقَاصِدِنَا مَعَ مَنْ لَنَا بِجَاهِ الْوَلِيِّ فِي الأَجْمِيرِ وَسَائِرِ الْأَبْرَارِ وَالْأَخْيَارِ آمِينَ';

  static const String arabic4baith1 =
      'تَقَبَّلْ دَعْوَتِي بَارِى\n'
      'وَأَهْلِ الْأُحدِ وَالْبَدْرِ\n'
      'وَبَاقِي الأَنْبِيَا طُرِّ\n'
      'جَمِيعِ وَلَاةِ ذِي الْبِرِّ\n'
      'وَأَهْلِ الْخَيْرِ وَالْيُسْرِ\n'
      'هَوَاءِ أَوْسَمَا الْقَطْرِ\n'
      'وَنَرْجُو الْعَفْوَ عَنْ خَطَرٍ\n'
      'وَكَشْفَ الْفَاقَةِ الْفَقْرِ\n'
      'شِفَاءَ الْمَرَضِ وَالْعُسْرِ\n'
      'قَضَاءَ الدَّيْنِ وَالْخُسْرِ\n'
      'ضِيَاءً دَاخِلَ الْقَبْرِ\n'
      'عَدَاءَ الْبَرْقِ فِي الْجِسْرِ\n'
      'وَظِلاً دَافِعَ الْحَرِّ\n'
      'وَثِقَلاً كَفَّةَ الْبِرِّ\n'
      'وَشُرْبًا كَأْسَ مُخْتَارٍ\n'
      'يَكُفُّ حَرَارَةَ السَّفَرِ\n'
      'كِتَابًا أَيْسَرًا يُبْرِى\n'
      'مَنَالاً جَنَّةً تَجْرِي\n'
      'بِأَكْوَابٍ وَأَنْهَارٍ\n'
      'قُصُورٍ رُؤْيَةَ الْبَارِى\n'
      'مَعَ الْآبَاءِ وَالْعِتَرِ\n'
      'وَأَنْصَارٍ بِمَقْرَبَةٍ\n'
      'وَبَاقِي أُمَّةِ الْخَيْرِ\n'
      'وَمَنْ أَدْرِى وَمَنْ لَا أَدْرِي\n'
      'وَصَلَّ عَلَى النَّبِيِّ الْبَرِّ\n'
      'بِتَسْلِيمٍ وَتَقْدِيرِ\n'
      'دَوَامَ الشَّمْسِ وَالْقَمَرِ\n'
      'تَقَبَّلْ دَعْوَتِي بَارِى\n';

  static const String arabic4baith2 =
      'بِجَاهِ نَبِيِّنَا الْخَيْرِ\n'
      'وَجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'وَسَائِرِ صَحْبِهِ الْبَرِّ\n'
      'وَجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'سَوَا فِي الْبَرِّ وَالْبَحْرِ\n'
      'وَجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'وَفِي ضُرِّ وَفِي الْيُسْرِ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'عَطَاءَ الْخَيْرِ بِالْأَسْرِ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'نَجَاءَ فِي فَضَا الْحَشْرِ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'بِضَوْضَاءِ لِمُقْتَدِرٍ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'مِنْ حَوْضِ الْكَوْثَرِ النَّهْرِ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'يَمِينًا طَائِرًا يَسْرِى\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'بِأَكْوَابٍ وَبِالْحُورِ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'وَأَشْيَاحَ وَمَنْ يَجْرِى\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'بِآفَاقِ وَفِي قُطْرٍ\n'
      'بِجَاهِ الشَّيْخِ أَجْمِيرِي\n'
      'وَآلِ صَحْبِ أَبْرَارٍ\n'
      'وَهَذَا الشَّيْخِ أَجْمِيرِي\n'
      'بِآصَالِ وَفِي الْبُكَرِ\n'
      'بِهَذَا الشَّيْخِ أَجْمِيرِي\n';

  static const String dua1 =
      'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ الَّلهُمَّ صَلَّ وَسَلَّمْ عَلَى رَسُولِكَ سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ صَلَوةً دَائِمَةً بَاقِيَةً إِلَى يَوْمِ الْمَعَادِ وَصَلِّ عَلَى جَمِيعِ الْأَنْبِيَاءِ وَالْمُرْسَلِينَ وَعَلَى آلِهِ وَصَحْبِهِ وَأَتْبَاعِهِ إِلَى يَوْمِ الدِّينِ اللَّهُمَّ أَوْصِلْ ثَوَابَ قِرَائَتِنَا إِلَى حَضْرَةِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَإِلَى حَضْرَاتِ سَائِرِ الأَنْبِيَاءِ وَالأَوْلِيَاءِ وَالْعُلَمَاءِ وَالصَّالِحِينَ وَإِلَى حَضْرَةِ رُوحِ وَلِيِّكَ حَسَنِ السَّنْجَرِي الْأَجْمِيرِي خَاصَّةً وَإِلَى جَمِيعِ الْمُؤْمِنِينَ عَامَّةً وَإِلَى حَضَرَاتِ أَرْوَاحِ وَالِدِينَا وَمَشَائِخِنَا وَأَقْرِبَائِنَا وَأَحْبَابِنَا وَسَائِرِ الْمُسْلِمِينَ الَّذِينَ مَاتُوا مِنَّا اللَّهُمَّ بِحَقِّ الشُّرَفَاءِ الْمُنْذِرِينَ يَسِّرْ عَسِيرَنَا وَسَهِّلْ أُمُورَنَا وَحَصِّلْ مَقَاصِدَنَا وَاشْفِنَا وَعَافِنَا وَقِنَا مِنْ جَمِيعِ الْآفَاتِ وَالْبَلِيَّاتِ وَأَفِضْ عَلَيْنَا مِنَ الْخَيْرَاتِ وَالْبَرَكَاتِ اللَّهُمَّ اغْفِرْ وَبَارِكْ جَامِعَ هَذَا الْمَوْلِدِ وَقُرَّائِهِ وَحُضَارِهِ وَمُحِبِّيهِ وَأَقْرِبَائِهِمْ وَجَمِيعِ أُمَّةٍ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اللَّهُمَّ بَارِكْ لَهُمْ فِي أَعْمَالِهِمْ وَأَكْسَابِهِمْ وَمُعَامَلَاتِهِمْ وَتِجَارَاتِهِمْ وَأَسْفَارِهِمْ وَسَائِرِ أُمُورِهِمْ يَا رَبَّ الْعَالَمِينَ إِلَهِي نَحْنُ فُقَرَاءُ لَيْسَ فِينَا مِنَ الْأَعْمَالِ مَا يُغْنِي فَسَامِحْنَا بِجُودِكَ مَا أَسَأْنَا وَوَفِّقْنَا لِعَمَلٍ مَا بَقَيْنَا وَحَصِّلْ كُلَّ مَقْصُودٍ نَوَيْنَا وَبَارِكْ فِي جَمِيعِ الْفَضْلِ فِينَا بِسِتْرِكَ فَاسْتُرَنْ مَا قَدْ خَبَأْنَا بِأَمْنِكَ وَآمِنَنْ مَا قَدْ رَعَوْنَا بِحِفْظِكَ فَاحْفَظْنَا وَارْحَمْنَا مِنَ الْآفَاتِ فِي أَهْلٍ وَفِينَا وَكَفَّرْ سُوءَ عَمَلِ وَالِدِينَا وَأَشْيَانٍ وَأَعْوَانٍ لِدِينِنَا وَادْخِلْنَا جَمِيعًا فِي الْجِنَانُ بِفَضْلٍ مِنْكَ ارْحَمْنَا رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ آمِينَ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ  ';

  static const String baith1 = 'رَضِيَ اللهُ عَنِ الْوَلِيِّ\n';
  static const String baith2 = 'مُعِينِ الدِّينِ الْعَلِيِّ\n';

  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Ajmeer Moulid',
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
                              color: Colors.redAccent,
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
                                      TextSpan(
                                        text: baith2,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 10),
                                Text('عَلَى الْمُصْطَفَى الْمُخْتَارِ خَيْرِ الْبَرِيَّةِ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                          // Vertical Separator Line
                          Container(
                            width: 1,
                            color: borderColor,
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            height: 670, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: baith1,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,  // Reduced from 3 to decrease space
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 10),
                                Text('صَلوةٌ  وَتَسْلِيمُ  وَأَزْكَى  تَحِيَّةٍ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                      fontSize: 15.9,
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
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: baith2,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('عَلَى  حَبِيبِكَ خَيْرِ الْخَلْقِ كُلِّهِم\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                      TextSpan(
                                        text: baith1,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,  // Reduced from 3 to decrease space
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('مَوْلايَ صَلَّ وَسَلَّمْ دَائِمًا  أَبَدًا\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: baith2,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('عَلَى خَيْرِ الْأَنَامِ بَدْرِ التَّمَامِ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                      fontSize: 15.5,
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
                            height: 730, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: baith1,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,  // Reduced from 3 to decrease space
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('صَلَوَاتِي عَلَى  النَّبِيِّ  وَسَلَامِي\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                      fontSize: 15.5,
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

                    // Seventh Container (Prose) - Arabic 4
                    StyledContainer(
                      text: arabic4,
                      fontSize: 18.0,
                      lineHeight: 2.2,
                      borderColor: borderColor,
                      fontWeight: FontWeight.bold,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    ),

                    // Eighth Container (Couplets/Baith) - Arabic Baith 4 (set 1 & 2)
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
                                      TextSpan(
                                        text: baith2,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('عَلَى طَهَ رَسُولِ اللهِ\n'
                                'عَلَى يس حَبِيبِ اللهِ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 2.2,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                            height: 1500, // Fixed height instead of double.infinity
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RichText(
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: baith1,
                                        style: GoogleFonts.amiri(
                                          fontSize: 16,
                                          height: 1.5,  // Reduced from 3 to decrease space
                                          fontWeight: FontWeight.bold,
                                          color: Colors.redAccent,
                                          wordSpacing: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('صَلَوةُ اللهِ سَلَامُ اللهِ\n'
                                'صَلَوةُ اللهِ سَلَامُ اللهِ\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 2.2,
                                  wordSpacing: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlueAccent,
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
                                    text: arabic4baith1,
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
                            style: GoogleFonts.amiri(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
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