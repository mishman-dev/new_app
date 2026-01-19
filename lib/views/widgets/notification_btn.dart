import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationBtn extends StatelessWidget {
  const NotificationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(37170400),
        color: Color.fromRGBO(152, 16, 250, 0.2),
      ),
      height: 34.2,
      width: 225.1,
      child: Center(
        child: Row(
          children: [
            Image.asset('assets/buttons/star_icon.png'),
            SizedBox(width: 10),
            Text(
              'SYSTEM NOTIFICATION',
              style: GoogleFonts.orbitron(
                fontSize: 12,
                letterSpacing: 0.6,
                fontWeight: FontWeight.normal,
                color: Color.fromRGBO(218, 178, 255, 1),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
