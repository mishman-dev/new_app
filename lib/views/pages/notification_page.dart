import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/views/widgets/awaken_btn.dart';
import 'package:new_app/views/widgets/main_text.dart';
import 'package:new_app/views/widgets/notification_btn.dart';
import 'package:new_app/views/widgets/spark_circle.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SparkCircle(),
        SizedBox(height:22.96 ,),
        NotificationBtn(),
        SizedBox(height:22.96 ,),
        MainText(),
        SizedBox(height:22 ,),
        Column(
          children: [
            Text('You have been chosen as a Player.', style: GoogleFonts.rajdhani(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(209, 213, 220, 1)
              ),),
            SizedBox(height: 12,),
            Text('Complete awakening to unlock unlimited growth potential.',style: GoogleFonts.rajdhani(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(153, 161, 175, 1)
              ),)
          ],
        ),
        SizedBox(height:50 ,),
        AwakenBtn(),
        SizedBox(height:30 ,),
        Text('The System is working. The system is waiting.',style: GoogleFonts.rajdhani(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(106, 114, 130, 1)
              ),)
      ],
    );
  }
}