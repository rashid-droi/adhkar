import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatheebScreen extends StatelessWidget {
  const RatheebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List of button titles for different ratheebs
    final List<String> buttonTitles = const [
      'Asmaul Husna Ratheeb',
      'Haddad Ratheeb',
      'Jalaliya Ratheeb',
      'Muhyudeen Ratheeb',
      'Pookoya Thanggal Ratheeb',
      'Quthubiyath',
      'Rifaee Ratheeb',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ratheeb',
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
                // if (buttonTitles[index] == 'Ratheeb 1') {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => RatheebOneScreen()),
                //   );
                // }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
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
