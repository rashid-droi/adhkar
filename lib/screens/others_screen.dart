import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({super.key});

  // List of button titles for different items
  final List<String> buttonTitles = const [
    'Asmaul Badr',
    'Asmaul Husna',
    'Mashara',
    'Qhuthubathu Nikah',
    'Sayyidul Isthighfar',
    'Swalathu Thasbeeh',
    'Swalathu Janaza',
    'Thalqeen & Thasbeeth',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Others',
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
                // Add navigation logic here
                // Example:
                // if (buttonTitles[index] == 'Aulad e Rasool') {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => AuladERasoolScreen()),
                //   );
                // }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.white,
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
                      textAlign: TextAlign.right,
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
