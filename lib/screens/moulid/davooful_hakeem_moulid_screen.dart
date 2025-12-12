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
class DavoofulHakeemMoulidScreen extends StatefulWidget {
  const DavoofulHakeemMoulidScreen({super.key});

  @override
  State<DavoofulHakeemMoulidScreen> createState() => _DavoofulHakeemMoulidScreenState();
}

class _DavoofulHakeemMoulidScreenState extends State<DavoofulHakeemMoulidScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  // 1. ARABIC PROSE INTRODUCTION (HAMD & PRAISE FOR KHWAJA MUINUDDIN CHISHTI)
  static const String arabic1 =
  'الْحَمْدُ لِلَّهِ الَّذِي بَدَأَ سِلْسِلَةَ الْمُمْكِنَاتِ بِإِيجَادِ أَشْرَقِ الْكَائِنَاتِ فَجَعَلَهُ نُورًا بَيْنَ يَدَيْهِ يُسَبِّحُهُ تَعَالَى قَبْلَ وُجُودِ أَبِي الْبَشَرِ فَتُسَبِّحُهُ مَلَئِكَةُ اللهِ الْكِرَامُ عَلَيْهِ وَعَلَيْهِمُ السَّلَامُ ) فَأَنْزَلَ اللَّهُ تَعَالَى إِلَى الْأَرْضِ فِي صُلْبِ خَلِيفَتِهِ وَنَبِيِّهِ آدَمَ فَلَمْ يَزَلْ يَنْتَقِلُ مِنَ الْأَصْلَابِ الطَّاهِرَاتِ وَالْأَرْحَامِ الْفَاخِرَاتِ حَتَّى ظَهَرَ مُتَمِّمَّا لِمَكَارِمِ الْأَخْلَاقِ وَخَاتِمًا لِسِلْسِلَةِ النُّبُوَّةِ وَالرِّسَالَةِ بِالْإِطْلَاقِ فَهُوَ صَلَّى اللهُ عَلَيْهِ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ أَوَّلُ الْأَنْبِيَاءِ وُجُودًا وَآخِرُهُمْ ظُهُورًا فَصَارَ بَيْنَهُمْ عُلْقَةً رُوحَانِيَّةً وَنِسْبَةً جِسْمَانِيَّةً فَكَمَا أَنَّ أَوَّلَ الْأَنْبِيَاءِ آدَمَ عَلَيْهِ السَّلَامُ أَصْلُ لِأَجْسَادِهِمْ كَذَلِكَ آخِرُهُمْ مُحَمَّدٌ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَصْلُ لِأَرْوَاحِهِمْ وَجَعَلَ نَصْرَهُ وَالْإِيمَانَ بِهِ حَقًّا عَلَى جَمِيعِهِمْ فَقَالَ عَزَّ مِنْ قَائِلٍ وَإِذْ أَخَدَ اللَّهُ مِيثَاقَ النَّبِيِّينَ لَمَا آتَيْتُكُم مِّنْ كِتَابٍ وَحِكْمَةٍ ثُمَّ جَاءَكُمْ رَسُولٌ مُصَدِّقٌ لِمَا مَعَكُمْ لَتُؤْمِنُنَّ بِهِ وَلَتَنْصُرُنَّهُ وَإِلَيْهِ الْإِشَارَةُ بِقَوْلِهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَوْ كَانَ مُوسَى حَيًّا لَمَا وَسِعَهُ إِلَّا اتَّبَاعِي فَأَنْزَلَ عَلَيْهِ التَّوْرَيةَ هُدًى لِبَنِي إِسْرَائِيلَ كَمَا أَنْزَلَ عَلَى نَبِيِّنَا الْفُرْقَانَ رَحْمَةً لِلْعَالَمِينَ وَجَمَعَ بَيْنَهُمَا لَيْلَةَ الْإِسْرَاءِ كَمَا جَمَعَ بَيْنَهُ وَبَيْنَ سَائِرِ الْأَنْبِيَاءِ فَقَالَ تَعَالَى وَلَقَدْ آتَيْنَا مُوسَى الْكِتَابَ فَلَا تَكُنْ فِي مِرْيَةٍ مِن لِقَائِهِ وَجَعَلْنَاهُ هُدًى لِبَنِي إِسْرَائِيلَ وَجَعَل مِنْ أُمَّتِهِ أَئِمَّةً يَهْدُونَ بِأَمْرِ اللَّهِ تَعَالَى فَقَالَ عَزَّ مِنْ قَائِلٍ وَجَعَلْنَا مِنْهُمْ أَئِمَّةً يَهْدُونَ بِأَمْرِنَا لَمَّا صَبَرُوا وَكَانُوا بِآيَاتِنَا يُوقِنُونَ وَإِنَّ مِنْ أُولَئِكَ الْأَئِمَّةِ عَلَى مَا رُوِيَ عَنْ كَثِيرِ الْمُتَوَاتِرَةِ فِي الْآفَاقِ كَيْفَ لَا وَقَدْ رَوَاهُ الْبُخَارِيُّ أَنَّهُ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ عَنْ رَبِّهِ تَبَارَكَ وَتَعَالَى قَالَ وَمَا يَزَالُ عَبْدِي يَتَقَرَّبُ إِلَيَّ بِالنَّوَافِلِ حَتَّى أُحِبُّهُ فَإِذَا أَحْبَبْتُهُ كُنْتُ سَمْعَهُ الَّذِي يَسْمَعُ بِهِ وَبَصَرَهُ الَّذِي يَبْصُرُ بِهِ وَيَدَهُ الَّتِي يَبْطِشُ بِهَا وَرِجْلَهُ الَّتِي يَمْشِي بِهَا وَإِنْ سَأَلَنِي أَعْطَيْتُهُ وَإِنِ اسْتَعَاذَنِي لَأُعِيدَنَّهُ فَسُبْحَانَ مَنْ تَعَزَّزَ بِسِرِّ الْأُلُوهِيَّةِ وَعِزّ الرُّبُوبِيَّةِ وَتَفَرَّدَ بِخَوَاصِهِمَا عَنِ الْمَخْلُوقَاتِ فَلَا يَتَّصِفُ بِشَيْءٍ مِنْهَا لَاحِقُ وَلَا سَابِقٌ وَأَمَّا غَيْرُهَا مِنَ الْأَوْصَافِ فَاللَّهُ يَرْزُقُ مَن يَشَاءُ بِغَيْرِ حِسَابٍ وَسَوَاءٌ فِيهَا الْأَحْيَاءُ وَالْأَمْوَاتُ كَمَا قَالَ تَعَالَى أَمْ حَسِبَ الَّذِينَ اجْتَرَحُوا السَّيِّئَاتِ أَنْ نَجْعَلَهُمْ كَالَّذِينَ آمَنُوا وَعَمِلُو الصَّالِحَاتِ سَوَاءً مَحْيَاهُمْ وَمَمَاتُهُمْ سَاءَ مَا يَحْكُمُونَ  ';

  static const String arabicbaith1 =
    'آلَا الْحَمْدُ لِلرَّحْمَنِ فِي كُلِّ حَالَةٍ\n'
    'وَاشْهَدُ أَنَّ اللَّهَ لَا رَبَّ غَيْرُهُ\n'
    'صَلوةٌ وَتَسْلِيمٌ عَلَى عَيْنِ رَحْمَةٍ\n'
    'الَا أَكْرَمَ الرَّحْمَنُ أَبْنَاءَ آدَمٍ\n'
    'وَفَضَّلَ مِنْهُمْ فَوْقَ كُلَّ مُحَمَّدًا\n'
    'وَقَرَّبَهُ الْمَوْلَى أُولِي الْعَزْمِ وَالْعُلَى\n'
    'وَمَيَّزَ مُوسَى عِنْدَ صَعْقٍ لِغَيْرِهِ\n'
    'فَمِنْ قَوْمِ مُوسَى اخْتَارَ دَاوُدَ شَيْخَنَا\n'
    'فَقَدْ كَانَ حِرْزًا لِلْأَنَامِ وَجُنَّةً\n'
    'فَكَمْ مِنْ كَرَامَاتٍ أَتَتْ فِي الرِّوَايَةِ\n'
    'وَأَخْبَرَنِي بَعْضُ الْأَخِلاءِ حِينَمَا\n'
    'دَعَوْتُ إِلَهِي أَنْ يُبَلِّغَ أَجْرَهَا\n'
    'سَرِيعًا رَأَيْتُ فِي الْمَنَامِ مُمَرِّضَةٌ\n'
    'فَمِنْ بَعْدِ أَيَّامٍ قَلائِلَ لَمْ أَزَلْ\n'
    'وَآخَرُ أَهْدَى مِثْلَهَا حِينَ يَأْسِهِ\n'
    'فَأَبْصَرَ فِي رُؤْيَا كَأَنَّ مُمَرِّضَةٌ\n'
    'وَعُوفِي سَرِيعًا سُقْمُهُ دُونَ مَهْلَةٍ\n'
    'صَلَوةٌ وَتَسْلِيمٌ عَلَى خَيْرِ مُرْسَلٍ';

  static const String arabicbaith2 =
    'عَلَى مَا حَبَانَا نِعْمَةً بَعْدَ نِعْمَةٍ\n'
    'وَأَحْمَدَ مَبْعُوثُ لِإِنْسِ وَجِنَّةٍ\n'
    'وَآلٍ وَأَصْحَابِ وَأَهْلِ الْمَحَبَّةِ\n'
    'وَأَرْسَلَ رُسُلًا بِالْكِتَابِ وَسُنَّةٍ\n'
    'فَأُمَّتُهُ كَانُوا بِهِ خَيْرَ أُمَّةٍ\n'
    'فَهُمْ بَعْدَ خَيْرِ الْخَلْقِ أَعْلَى مَكَانَةٍ\n'
    'كَمَا جَاءَ عَنْ طَهَ صَحِيحُ الرِّوَايَةِ\n'
    'كَمَا اخْتَارَ مُحْيِ الدِّينِ غَوْثَ الْخَلِيقَةِ\n'
    'إِذَا مَا شَكَوْهُ عِنْدَ مُعْضِلِ آفَةٍ\n'
    'تَوَاتَرَ مَعْنَاهَا مِنْ أَهْلِ الْوَثَاقَةِ\n'
    'بُلِيتُ بِأَسْقَامٍ قَرَأْتُ بِسُرَّةٍ\n'
    'لِحَضْرَةِ دَاوُدَ الْحَكِيمِ كَهَدْيَةٍ\n'
    'تُمَرِّضُ فِي بَدَنِي بِغَرْزِ لِإِبْرَةٍ\n'
    'بَرِيئًا مِنَ الْآلَامِ فِي حَالِ رَاحَةٍ\n'
    'لِمَا كَانَ فِي سُقْمٍ بِبَعْضِ الْعَشِيرَةِ\n'
    'تُخَلِّطُ مَاءً بِالدَّوَاءِ بِقَصْعَةٍ\n'
    'فَسُبْحَانَ مَنْ أَوْلَى لِأَهْلِ الْوِلَايَةِ\n'
    'وَآلٍ وَدَاوُدَ الْحَكِيمِ وَعِبْرَةٍ';

  static const String arabic2 = 
    'وَرُوِيَ أَنَّ الشَّيْخَ دَاوُدَ الْحَكِيمَ رَضِيَ اللَّهُ عَنْهُ وَنَفَعَنَا بِهِ صَاحِبَ الْكَرَامَاتِ الْعَجِيبَةِ وَمُدَاوِيَ الْأَسْقَامِ الغَرِيبَةِ وَلِيُّ مِنْ بَنِي إِسْرَائِيلَ الَّذِينَ آمَنُوا بِرَسُولِ اللَّهِ مُوسَى عَلَى نَبِيِّنَا وَعَلَيْهِ الصَّلوةُ وَالسَّلَامُ وَتَبَخَّرَ فِي عِلْمِ التَّوْرَيةِ وَتَنَسَّكَ بِهَا وِفْقَ مَا أُمِرَ وَكَانَ حَكِيمًا طَبِيبًا يُدَاوِي النَّاسَ بِأَنْوَاعِ الْمُدَاوَاةِ وَيُعِدُّ ذَالِكَ زَادًا لِلْآخِرَةِ فَإِنَّ الدُّنْيَا مَزْرَعَةُ الْآخِرَةِ فَإِذَا أَخْلَصَ الْإِنْسَانُ نِيَّتَهُ وَقَصْدَهُ لَا بُدَّ أَنْ يَصِيرَ مَا يَصْدُرُ مِنَ الْمُبَاحَاتِ عِبَادَةً مُقَرِّبَةً إِلَى وَجْهِ اللَّهِ الْكَرِيمِ كَمَا أَشَارَ إِلَيْهِ صَاحِبُ الشَّرِيعَةِ الْغَرَّاءِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ وَإِنَّمَا لِكُلِّ امْرِءٍ مَا نَوَى وَأَمَّا ظُهُورُ أَمْرِهِ فِي بَلْدَةِ مُتَّبَيدَّ مِنْ ضِلْعِ تَنْجَاوُورُ فِي الْمَكَانِ الْمَشْهُورِ بِضَرِيحِهِ وَمَضْجَعِهِ فَرُوِيَ أَنَّهُ كَانَ هُنَاكَ رَجُلٌ زَارِعُ يَزْرَعُ الْأَرْضَ بِأَنْوَاعِ الْحُبُوبِ فَبَيْنَمَا هُوَ يَحْرُثُ تِلْكَ الْبُقْعَةَ الَّتِي هِيَ مِنْ وِلَآيَةِ مَدْرَاسُ وَصَلَ مِحْرَاثُهُ فَوْقَ قَبْرِهِ الْكَرِيمِ وَلَيْسَ يُدْرِكُ أَنَّ تَحْتَهُ قَبْرًا وَغَيْرَهُ فَنَضَحَ مِنْ تِلْكَ الْأَرْضِ دَمُ عَجِيبُ فَعَمِيَتْ عَيْنَاهُ وَتَحَيَّرَ وَتَهَيَّمَ أَنَّ هَذَا الْأَمْرَ لِحِرَاثَةِ هَذِهِ الْبُقْعَةِ وَإِثَارَةِ تِلْكَ التَّرْبَةِ فَتَابَ عَنْ فِعْلِهِ وَعَزَمَ عَلَى أَنْ لَا يَعُودَ إِلَى تِلْكَ الْفَعْلَةِ مَرَّةً أُخْرَى فَبَرِئَ عَمَّا أَصَابَهُ مِنَ الْعَمَى ثُمَّ رَأَى فِي الْمَنَامِ شَيْخًا فَخِيمًا فَسَمَّاهُ بِأَنَّهُ الشَّيْخُ دَاوُدُ الْحَكِيمُ وَأَخْبَرَهُ بِأَمْرِهِ وَأَنَّ الْمَكَانَ الْفُلَانِي قَبْرُهُ وَبَيَّنَ لَهُ مَبْدَأَهُ وَمُنْتَهَاهُ وَأَوْصَاهُ بِإِظْهَارِ أَمْرِهِ لِلْمُسْلِمِينَ وَاسْكَانِهِمْ بِجَوَارِهِ فَفَعَلَ كَمَا أُمِرَ فَانْتَشَرَ هَذَا الْأَمْرُ فِي بِلادِ الْمُسْلِمِينَ فَأَتَوْهُ أَفْوَاجًا وَجَمَّا غَفِيرًا وَعَظَّمُوهُ وَشَرَّفُوا مَكَانَهُ وَبَنَوْا عَلَى قَبْرِهِ مَقَامًا كَرِيمًا وَطُولُ قَبْرِهِ كَمَا هُوَ مُشَاهَدُ الْآنَ عِشْرُونَ بِالدِّرَاعِ الْمُعْتَدِلَةِ مِنْ أَهْلِ هَذَا الْعَصْرِ فَلَمْ يَزَلْ يُزَارُ وَيُتَبَرَّكُ بِهِ وَيَنْتَفِعُ بِهِ النَّاسُ لِلْأَوْجَاعِ وَالْآلَامِ الْمُعْضِلَةِ لِلْأَطِبَّاءِ كُلِّهِمْ فَصَارَ ذَلِكَ الْمَقَامُ بِحَيْثُ يَظُنُّ بِهِ مَنْ لَا خُبْرَةَ عِنْدَهُ أَنَّهُ مَارِسْتَانُ الْمَجَانِينِ بَلْ مُسْتَشْفَى الْأَسْقَامِ كُلِّهَا مِنْ غَيْرِ تَفْرِقَةٍ بَيْنَ جِسْمَانِي وَرُوحَانِي فَتَرَى فِي جِوَارِ قَبْرِهِ صُفُوفًا مِنَ الْمَرْضَى وَكَثِيرًا مِنَ الْمُقَيَّدِينَ مِنَ الْجُنُونِ بِمَسِّ الشَّيْطَانِ أَوْ غَيْرِهِ فَيُشْفَى بِمُدَاوَاتِهِ كَثِيرٌ مِمَّنْ أَرَادَ اللَّهُ لَهُ الشَّفَاءَ عَافَانَا بِهِ فِي الدُّنْيَا وَالْآخِرَةِ ';

  static const String arabic2baith1 =
    'سُبْحَانَ مُولِي كَرَامَاتٍ بِإِعْلَانِ\n'
    'فَمِنْ كَرَامَاتِ دَاوُدَ الْحَكِيمِ الَّذِي\n'
    'مِنْ قَوْمِ مُوسَى بَنِي إِسْرَالَ فَضَّلَهُمْ\n'
    'مَا قِيلَ إِنَّ وَلِيًّا رَاحَ زَائِرَنَا\n'
    'فَكَانَ يَقْفُلُ مِنْ بَعْدِ الزِّيَارَةِ إِذْ\n'
    'أَعْيَاهُ عَنْ سَفَرِهِ جُوعٌ فَحَطَّ هُنَا\n'
    'أَضَافَهُ رَجُلٌ مَوْزًا وَخَلَّطَهُ\n'
    'فَصَارَ مِنْ أَكْلِهِ أَسِيرَ مَضْجَعِهِ\n'
    'فَلَاذَ فَوْرًا إِلَى دَاوُدَ مَلْجَئِنَا\n'
    'أَعْطَاهُ عِرْقًا نَعِيمًا فِي الْمَنَامِ بِهِ\n'
    'صَلَّى الْإِلَتَهُ عَلَى خَيْرِ الْبَرِيَّةِ مَعْ';

  static const String arabic2baith2 =
    'مَنْ شَاءَ مِنْ خَلْقِهِ مِنْ غَيْرِ حِسْبَانٍ\n'
    'أَبْدَاهُ رَبُّ الْوَرَى عَوْنًا لِلَهْفَانِ\n'
    'عَلَى بَرِيَّتِهِ مِنْ بَيْنِ أَقْرَانِ\n'
    'هُورٍ مَزَارِ وَلِيِّ اللَّهِ مِيرَانِ\n'
    'وَسْطَ الطَّرِيقِ أَتَى قَصْدًا لِرُجْعَانِ\n'
    'كَ رَحْلَهُ وَنَوَى زَادًا بِوَجْدَانِ\n'
    'سُمَّا لِيَقْتُلَهُ ظُلْمًا بِعُدْوَانٍ\n'
    'سُقْمًا كَمَا مُسَّ مِنْ جِنِّ وَشَيْطَانٍ\n'
    'فَجَاءَهُ لِمُدَاوَاةٍ بِإِيقَانٍ\n'
    'شَفَاهُ رَبُّ الْوَرَى مِنْ كُلِّ حَدَثَانِ\n'
    'آلِ وَصَحْبِ وَدَاوُدٍ بِرِضْوَانٍ';

  static const String arabic3 =
    'وَحُكِي عَنِ الشَّيْخِ الْفَاضِلِ صَدَقَةِ اللَّهِ الْكَامِلِ أَنَّهُ زَارَ قَبْرَهُ فَلَمَّا جَاءَ مَقَامَهُ تَرَدَّدَ فِي أَمْرِهِ أَهُوَ وَلِيُّ مِنْ أَوْلِيَاءِ اللَّهِ تَعَالَى أَمْ لَا فَلَمْ يَقْرَأُ عَلَيْهِ شَيْئًا مِنَ الْقُرْآنِ الْعَظِيمِ فَبَيْنَمَا هُوَ نَائِمُ رَأَي الشَّيْخَ دَاوُدَ يَأْمُرُ بَعْضَ خُدَّامِهِ بِأَخْذِهِ أَخْذًا عَنِيفًا فَتَنَفَّخَ بَطْنُهُ مُتَوَرِّمًا فَسَأَلَهُ عَنْ سَبَبٍ أَمْرِهِ بِذَلِكَ فَقَالَ إِنَّكَ أَسَأْتَ بِي ظَنَّكَ وَلَيْسَ مَعْفُوا عَنْهُ مِثْلُكَ فَإِنِّي رَأَيْتُ التَّوْرَاةَ وَتَحَقَّقْتُ بِنَعْتِ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَآمَنْتُ بِهِ فَتَابَ الشَّيْخُ صَدَقَةُ اللَّهِ سَرِيعًا مِنْ ظَنِّهِ وَقَرَأَ عَلَيْهِ شَيْئًا مِنْ سُورَةِ يس فَشَفَاهُ اللهُ الْعَظِيمُ عَمَّا هُوَ بِهِ سَقِيمٌ وَكَانَ ذَلِكَ كُلُّهُ فِي الْمَنَامِ وَحُكِي عَنْ بَعْضِ مُجَاوِرِي الْقَبْرِ الشَّرِيفِ أَنَّ رَجُلًا مِنْ أَهْلِ مَدْرَاسٌ جَاءَ مَقَامَ الشَّيْخِ رَضِيَ اللَّهُ عَنْهُ مُتَوَدِّعَ الْبَطْنِ فَاشْتَكَى إِلَيْهِ بَلْوَاهُ فَرَأَى فِي الْمَنَامِ أَنَّ الشَّيْخَ شَقَّ بَطْنَهُ بِسِكِينِهِ الْمُحَدَّدِ فَأَخْرَجَ مِنْهُ شَيْئًا مِثْلَ الضَّفْدَعِ ثُمَّ لَامَ بَطْنَهُ فَبَعْدَ مَا تَيَقَّظَ وَجَدَ عَلَامَةَ تَشْرِيحِهِ ظَاهِرَةً فِي بَطْنِهِ فَتَعَجَّبَ مَنْ رَآهُ وَحُكِي أَنَّهُ إِنْ أَعْطَى الشَّيْخُ شَيْئًا فِي الْمَنَامِ يُوجَدُ أَثَرُهُ غَالِبًا فِي الْيَقْظَةِ وَبِالْجُمْلَةِ لَا رَيْبَ فِي أَنَّهُ وَلِيُّ مِنْ أَوْلِيَاءِ اللَّهِ تَعَالَى وَصَاحِبُ الْكَرَامَاتِ الْعَجِيبَةِ وَكَاشِفُ الْمُعْضِلَاتِ الشَّدِيدَةِ قَدِ اسْتَفَاضَ الْيَوْمَ صِيتُهُ فَنَسْأَلُ اللَّهَ تَعَالَى أَنْ يُفِيضَ عَلَيْنَا مِنْ بَرَكَاتِهِ وَأَنْ يُعَافِيَنَا مَعَ الْأَهْلِينَ وَالْأَحْبَابِ عَنْ مُعْضِلَاتِ الْأَدْوَاءِ وَأَنْ يُعِيذَنَا عَنْ مُلازَمَةِ أَبْوَابِ الْأَطِبَّاءِ بِحَقِّ ذَلِكَ الشَّيْخِ الْجَلِيلِ وَحُقُوقِ سَائِرِ الْأَنْبِيَاءِ وَالْأَوْلِيَاءِ وَالصَّلَحَاءِ ';

  static const String arabic3baith1 =
    'قَدْ كَانَ مِنْ قَوْمٍ كِرَامِ مِنْ بَنِي\n'
    'لَكِنْ عَلَى أَقْرَانِهِمْ أَمَّا عَلَى الْ\n'
    'خَافَ الْإِلهَ فَهَابَهُ مَعْ حُبِّهِ\n'
    'كَشَفَتْ مَقَامَاتُ الْوُصُولِ حِجَابَهُ\n'
    'مَا لِي سِوَى حُبِّ الْكِرَامِ ذَخِيرَةٌ\n'
    'فَاللَّهُ يَنْفَعُنِي بِهِ وَبِحُبِّهِ\n'
    'مَبْرُورَ حَجَّ كَامِلٍ يَسِّرْ لَنَا\n'
    'انْطِقْنِ لَا إِلَهَ إِلَّا اللهُ يَا\n'
    'فِي جَنَّةِ الْفِرْدَوْسِ أَدْخِلْنَا وَلَا\n'
    'يَا رَبِّ صَلِّ عَلَى النَّبِيِّ الْمُصْطَفَى';

  static const String arabic3baith2 =
    'إِسْرَالَ فَضَّلَهُمْ بِأَعْلَى رُتْبَةٍ\n'
    'إِطْلَاقِ فَالْأَخْيَارُ خَيْرُ الْأُمَّةِ\n'
    'كُلُّ الْوَرَى أَصْدِقْ بِتَابِعِ أُمَّةٍ\n'
    'فَرَأَى بِنَاظِرِ قَلْبِهِ لِجَزَائِهِ\n'
    'فَالْمَرْأُ مَعْ مَحْبُوبِهِ فِي الْجَنَّةِ\n'
    'وَدَوَائِهِ الْمَرْجُو عِنْدَ بَلِيَّةٍ\n'
    'مَعْ عُمْرَةٍ وَزِيَارَةِ مَقْبُولَةٍ\n'
    'رَبِّي مَعَ التَّحْقِيقِ عِنْدَ مَنِيَّتِي\n'
    'تَمْنَعْ بِلا تَقْرُبُ وَلَوْ مِنْ شَجَرَةٍ\n'
    'مُنْجِي الْخَلَائِقِ فِي غَدٍ بِشَفَاعَةٍ';

  static const String arabic4 =
    'وَقَالَ بَعْضُهُمْ فِي مَنَاقِبِهِ رَضِيَ اللَّهُ عَنْهُ إِنَّهُ كَانَ صَاحِبَ الْمَقَامَاتِ الْعَلِيَّةِ وَالْكَرَامَاتِ الْبَهِيَّةِ وَالْمُكَاشَفَةِ السَّنِيَّةِ وَلَهُ عَوَائِدُ عَدِيدَةٌ وَفَوَائِدُ مَدِيدَةٌ تَذَلَّلَتْ لَهُ رِقَابُ الْمُلُوكِ الْعُظَمَاءِ وَتَخَشَّعَتْ لَهُ رُؤُوسُ الْجَبَابِرَةِ وَالْأُمَرَاءُ وَزَاوَرَتْهُ المَشَايِخُ وَالْعُلَمَاءُ وَلَهُ عَجِيبَاتُ لَا تُحَدُّ وَكَرَامَاتٌ لَا تُحْصَى وَلَقَدْ حُكِي عَنِ امْرَأَةٍ صَاحِبَةِ النِّعَمِ أَنَّهَا تَحَسَّرَتْ لِعَدَمِ الْوَلَدِ خَائِفَةً الْعُقْمِ فَجَاءَتْ مَقَامَ الشَّيْخِ رَضِيَ اللَّهُ عَنْهُ فَرَأَتْ فِي نَوْمِهَا أَنَّ الشَّيْخَ أَعْطَاهَا سَفُوفًا مَصْنُوعًا مِنْ أَوْرَاقٍ خَاصَّةٍ فَتَيَقَظَتْ وَاجِدَةً بَعْضَهَا فِي ثَوْبِهَا فَلَمَّا رَأَتْهُ صَاحِبَتُهَا أَخَذَتْهُ فَأَكَلَتْهُ ثُمَّ حَمَلَتْ بِبَرَكَةِ الشَّيْخِ الْحَكِيمِ فَوَضَعَتْ وَلَدَيْنِ بِقُدْرَةِ اللَّهِ الْعَظِمِ وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ وَسَلَّمَ ';

  static const String arabic4baith1 =
    'يَا رَبَّنَا عَبْدُ بِبَابِكَ وَاقِفُ يَرْجُو الْعَطَا\n'
    'وَغَيْرَ قَرْعِ الْبَابِ قَطُّ مَا لَهُ مِنْ حِيلَةٍ\n'
    'لَوْ كَانَ جُودُ مِنْكَ مَحْجُوبًا عَنِ الْعَاصِينَ يَا\n'
    'وَفِّقْ لَنَا عَلَى جَمِيعِ الْخَيْرِ يَا رَحْمَانَنَا\n'
    'وَاشْغَلْ بِتَفْتِيشِ عُيُوبِ النَّفْسِ عَنْ أَغْيَارِنَا\n'
    'وَارْزُقُ لَنَا مِنْ حَيْثُ أَنْ لَمْ تَحْتَسِبْ وَاسْمَحْ لَنَا\n'
    'وَاكْشِفْ أَذَانَا رَاحِمَ الْمِسْكِينِ وَامْنَحْ بِالشَّفَا\n'
    'وَعَيْنَ مِعْيَانٍ قِنَا وَشَرَّ كُلِّ حَاسِدٍ\n'
    'وَسَاحِرٍ وَفَاجِرٍ وَامْنَعْ أَكُفَّ الظَّالِمِ\n'
    'وَامْنَعْ لِسَانًا نَاطِقًا بِالشَّرِفِينَا رَاحِمِي\n'
    'بِكَامِلِ التَّفْوِيضِ تَدْبِيرًا أَزِلْ عَنْ قَلْبِنَا\n'
    'أَوْصِلْ إِلَيْنَا كُلَّ مَطْلُوبٍ سَرِيعًا سَيِّدِي\n'
    'لَكِنْ إِذَا رَأَيْتَ فِيهَا الْخَيْرَ فَارْزُقْهَا لَنَا\n'
    'لَكِنْ إِذَا رَأَيْتَ فِيهَا الْخَيْرَ فَارْزُقْهَا لَنَا\n'
    'لَمِنْ لَنَا الْحُجَّةَ فِي الْقَبْرِ إِذَا مَا نُسْأَلُ\n'
    'وَلَا تَرُدَّنْ عَنْ حِيَاضِ الْمُصْطَفَى خَيْرِ الْوَرَى\n'
    'وَلَا تَرُدَّنْ عَنْ حِيَاضِ الْمُصْطَفَى خَيْرِ الْوَرَى\n'
    'مُحْبُوحَةَ الْجَنَّاتِ أَدْخِلْنَا بِأَحْبَابِ لَنَا\n'
    'مُحْبُوحَةَ الْجَنَّاتِ أَدْخِلْنَا بِأَحْبَابِ لَنَا\n'
    'مُحْبُوحَةَ الْجَنَّاتِ أَدْخِلْنَا بِأَحْبَابِ لَنَا\n'
    'يَا رَبِّ صَلِّ وَسَلَّمَنَّ عَلَى النَّبِيِّ مُحَمَّدٍ';

  static const String arabic4baith2 =
    'فَاغْفِرْ لَهُ لَا تَطْرُدَنْ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'فَلَا تَرُدَّنْ كَفَهُ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'رَبِّي فَمَنْ نَرْجُوا فَجُدْ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَجُدْ بِمَا تَرْضَى بِهِ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَفِّقْ لِتَطْهِيرِ السِّوَى بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'بِمَخْرَجِ عَنْ ضِيقَةٍ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'عَنِ الْأَطِبًا أَغْنِنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَشَرَّ ابْلِيسٍ قِنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَكُلَّ أَعْدَاءٍ لَنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَكُفَّ كُلَّ سَارِقٍ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'كَيْ نَرْتَضِي عِنْدَ اللَّقَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَادْفَعْ مُصِيبَاتٍ لَنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَاقْرُنْ بِهَا صَبْرًا لَنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'حِينَ الصَّلَاحِ تَوَفَّنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَحِينَ بَعْثٍ طَيِّنَنْ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'شَفَعْهُ فِينَا رَاحِمِي بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'نَمْشِي عَلَيْهِ خَالِقِي بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'وَخَيْرَ حُورٍ آتِنَا بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'بِنَظْرِ وَجْهِ أَقْرِرَنْ بِالشَّيْخِ دَاوُدَ الْوَلِي\n'
    'شَافِي وَكُنْ لِي وَاحْمِنَا بِالشَّيْخِ دَاوُدَ الوَلِي\n'
    'شَافِي وَكُنْ لِي وَاحْمِنَا بِالشَّيْخِ دَاوُدَ الوَلِي';

  static const String dua1 =
    'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ عَبْدِكَ وَنَبِيِّكَ وَرَسُولِكَ النَّبِيِّ الْأُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمْ وَبَارِكْ عَلَى سَيِّدِنَا مُحَمَّدٍ وَآدَمَ وَنُوحٍ وَإِبْرَاهِيمَ وَمُوسَى وَعِيسَى وَمَنْ بَيْنَهُمْ مِنَ النَّبِيِّينَ وَالْمُرْسَلِينَ صَلَوَاتُ اللهِ وَسَلَامُهُ عَلَيْهِمْ أَجْمَعِينَ اللَّهُمَّ صَلِّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ صَلَوةً تُنْجِينَا بِهَا مِنْ جَمِيعِ الْمِحَنِ وَالْإِحَنِ وَالْأَهْوَالِ وَالْبَلِيَّاتِ وَتُسَلِّمُنَا بِهَا مِنْ جَمِيعِ الْفِتَنِ وَالْأَسْقَامِ وَالْعَاهَاتِ وَتُطَهِّرُنَا مِنْ جَمِيعِ الْعُيُوبِ وَالسَّيِّئَاتِ وَتَغْفِرُ لَنَا بِهَا مِنْ جَمِيعِ الذُّنُوبِ وَتَمْحُو بِهَا عَنَّا جَمِيعَ الْخَطِيئَاتِ وَتَقْضِي لَنَا بِهَا جَمِيعَ مَا نَطْلُبُهُ مِنَ الْحَاجَاتِ وَتَرْفَعُنَا بِهَا عِنْدَكَ أَعْلَى الدَّرَجَاتِ وَتُبَلِّغُنَا بِهَا أَقْصَى الْغَايَاتِ مِنْ جَمِيعِ الْخَيْرَاتِ فِي الْحَيَوةِ وَبَعْدَ الْمَمَاتِ يَا رَبِّ يَا اللَّهُ يَا مُجِيبَ الدَّعَوَاتِ اللَّهُمَّ إِنَّا نَسْئَلُكَ بِجَاهِ نَبِيِّكَ وَرَسُولِكَ وَحَبِيبِكَ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عِنْدَكَ وَمَكَانَتِهِ لَدَيْكَ وَبِحُقُوقِ سَائِرِ الْأَنْبِيَاءِ وَالْأَوْلِيَاءِ وَالْعُلَمَاءِ وَالشُّهَدَاءِ وَالصَّالِحِينَ وَبِحَقِّ وَلِيِّكَ الشَّيْخِ دَاوُدَ الْحَكِيمِ الَّذِي قَرَأْنَا شَيْئًا مِنْ مَنَاقِبِهِ رَضِيَ اللَّهُ عَنْهُ فِي هَذَا الْمَجْلِسِ أَنْ تُعَجِّلَ بِفَتْحٍ مِنْكَ مَا فِيهَا هَمُّنَا وَتَغْفِرَ لَنَا وَتُفَرِّجَ عَنَّا جَمِيعَ كُرَبِنَا وَهُمُومِنَا وَتَشْفِيَ مَرْضَانَا وَتَقْضِيَ حَوَثِجَنَا الدُّنْيَوِيَّةَ وَالْأُخْرَوِيَّةَ وَتُصْلِحَ جَمِيعَ أُمُورِنَا وَنَسْئَلُكَ يَا حَيُّ يَا قَيُّومُ بِحَقِّ هَؤُلَاءِ السَّادَاتِ الْمَذْكُورِينَ أَنْ تَدْفَعَ عَنَّا وَعَنْ وَالِدِينَا وَأَوْلَادِنَا وَاخْوَتِنَا وَأَقَارِبِنَا وَأَسَاتِيذِنَا وَاحْبَابِنَا وَمَنْ أَوْصَانَا بِالدُّعَاءِ كُلَّ آفَةٍ وَشَرٍ وَمُصِيبَةٍ وَمَرَضِ وَعِلَّةٍ وَكُرْبَةٍ وَسُوءٍ وَسِحْرٍ وَفِتَنِ يَا رَبَّ الْعَالَمِينَ وَنَسْتَلُكَ يَا اللَّهُ يَا ذَا الْجَلَالِ وَالْإِكْرَامِ أَنْ تَرْزُقَنَا وَإِيَّاهُمْ حُسْنَ الْخَاتِمَةِ عِنْدَ الْمَوْتِ وَأَنْ تُخَفِّفَ عَنَّا وَعَنْهُمْ سَكَرَاتِ الْمَوْتِ وَأَنْ تُعِيذَنَا وَإِيَّاهُمْ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ النَّارِ وَأَنْ تُسْكِنَنَا وَإِيَّاهُمْ جَنَّتَكَ دَارَ السَّلَامِ مَعَ أَحْبَابِكَ الْأَخْيَارِ بِحُقُوقِ هَؤُلَاءِ السَّادَاتِ الْمَذْكُورِينَ رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ وَتُبْ عَلَيْنَا إِنَّكَ انْتَ التَّوَّابُ الرَّحِيمُ آمِينَ بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ وَصَلَّى اللهُ وَسَلَّمَ عَلَى خَيْرٍ خَلْقِهِ سَيِّدِنَا مُحَمَّدٍ وَآلِهِ وَصَحْبِهِ أَجْمَعِينَ وَسَلَامٌ عَلَى الْمُرْسَلِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ آمِينَ  ';

  static const String baith1 = 'رَضِيَ اللَّهُ عَنِ الْوَلِيِّ\n';
  static const String baith2 = 'دَاوُدَ الشَّيْخِ الْعَلِي\n';


  @override
  Widget build(BuildContext context) {
    const Color pageBackgroundColor = Colors.white;
    const Color borderColor = Color(0xFF9E895C);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        title: Text(
          'Davoodul Hakeem (r) Moulid',
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
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22), 
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
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('عَلَى الْمُصْطَفَى الْمُخْتَارِ خَيْرِ الْبَرِيَّةِ\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
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
                            height: 1030, // Fixed height instead of double.infinity
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
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text('صَلوةٌ  وَتَسْلِيمُ  وَأَزْكَى  تَحِيَّةٍ\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
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
                      child: Column(
                        children: [
                          Text(
                            arabic2,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.lateef(
                              fontSize: 21,
                              height: 2.5,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
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
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('عَلَى حَبِيبِكَ خَيْرِ الْخَلْقِ كُلِّهِم\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
                                      height: 2.5,
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
                            height: 680, // Fixed height instead of double.infinity
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
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('مَوْلاَيَ صَلَّ وَسَلَّمْ دَائِمًا أَبَدًا\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
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

                    // Fifth Container (Prose) - Arabic 3
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Column(
                        children: [
                          Text(
                            arabic3,
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
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'وَالْآلِ مَعْ صَحْبِ وَدَاوُدَ الْوَلِي\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
                                      height: 2.5,
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
                            height: 610, // Fixed height instead of double.infinity
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
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'سَلَّمْ وَصَلِّ عَلَى الرَّسُولِ الْأَجْمَلِ\n',
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 21,
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

                    // Seventh Container (Prose) - Arabic 4
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            arabic4,
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

                    // Eighth Container (Couplets/Baith) - Arabic Baith 4 (set 1 & 2)
                    StyledContainer(
                      borderColor: borderColor,
                      margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      showShadow: true,
                      padding: const EdgeInsets.fromLTRB(2, 12, 2, 12),
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
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('رَبِّي وَآلٍ ثُمَّ أَصْحَابِ وَدَاوُدَ الْوَلِي\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
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
                                    style: GoogleFonts.lateef(
                                      fontSize: 18.7,
                                      height: 2.5,
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
                            margin: const EdgeInsets.symmetric(horizontal: 2.0),
                            height: 1060, // Fixed height instead of double.infinity
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
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlueAccent,
                                          wordSpacing: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Text('صَلِّ وَسَلَّمْ دَائِمًا عَلَى نَبِيِّ نِ الْعَلِي\n',
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 16,
                                  height: 1,
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
                                    text: arabic4baith1,
                                    style: GoogleFonts.lateef(
                                      fontSize: 18.7,
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