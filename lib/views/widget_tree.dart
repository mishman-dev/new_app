import 'package:flutter/material.dart';
import 'package:new_app/data/constants.dart';
import 'package:new_app/views/pages/selected.dart';


class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    gradient: backgroundGradient,
  ),
  child: Scaffold(
    backgroundColor: Colors.transparent, // Important: make Scaffold transparent
    body: Center(
      child: SelectedPage(),
    ),
  ),
);
  }
}