import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color.fromRGBO(194, 122, 255, 1),
          Color.fromRGBO(0, 211, 242, 1),
        ],
      ).createShader(bounds),
      child: Column(
        children: [
          Text(
            'YOU HAVE BEEN',
            style: GoogleFonts.orbitron(
              fontSize: 30,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w400,
              color: Colors.white, // required for ShaderMask
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(0, 211, 242, 1),
                Color.fromRGBO(194, 122, 255, 1),
              ],
            ).createShader(bounds),
            child: Text(
              'SELECTED',
              style: GoogleFonts.orbitron(
                fontSize: 30,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
