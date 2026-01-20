import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/views/pages/create_profile_page.dart';

class AwakenBtn extends StatelessWidget {
  const AwakenBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  height: 62.17,
  width: 345.28,
  padding: const EdgeInsets.all(2), // border thickness
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color.fromRGBO(152, 16, 250, 1),
        Color.fromRGBO(0, 146, 184, 1),
      ],
    ),
  ),
  child: GestureDetector(
    onTap: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) {
        return CreateProfilePage();
      },));
    },
    child: Container(
      decoration: BoxDecoration(
        color: Colors.black, // inner background
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'START AWAKENING',
          style: GoogleFonts.orbitron(
            fontSize: 16,
            letterSpacing: 0.8,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(238, 238, 238, 1),
          ),
        ),
      ),
    ),
  ),
);


  }
}