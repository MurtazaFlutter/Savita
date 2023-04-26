import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('lib/assets/images/back.png'),
          Column(
            children: [
              Text(
                'Savita',
                style: GoogleFonts.poppins(
                  fontSize: 64,
                  fontWeight: FontWeight.w800,
                  
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
