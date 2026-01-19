import 'package:flutter/material.dart';
import 'package:new_app/data/constants.dart';
import 'package:new_app/views/pages/notification_page.dart';


class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: backgroundGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: NotificationPage(),
            ),
          ],
        ),
      ),
    );
  }
}