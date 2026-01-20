import 'package:flutter/material.dart';
import 'package:new_app/data/constants.dart';
import 'package:new_app/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Container(
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
              child: WidgetTree()),
          ])))
    );
  }
}
