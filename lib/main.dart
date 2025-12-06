import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AlHasnathApp());
}

class AlHasnathApp extends StatelessWidget {
  const AlHasnathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Al-Hasnath",
      theme: ThemeData(
        primaryColor: const Color(0xFFE9E5DC),
        scaffoldBackgroundColor: const Color(0xFFE9E5DC),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
