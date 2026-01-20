import 'package:flutter/material.dart';

class SparkCircle extends StatelessWidget {
  final String icon; // declare the icon parameter

  const SparkCircle({super.key, required this.icon}); // mark as required

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 95.99,
          height: 95.99,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [
                Color(0xFF00D3F2),
                Color(0xFF0092B8),
              ],
            ),
          ),
        ),
        Container(
          width: 103.29,
          height: 103.29,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [
                Color(0xFF9810FA),
                Color(0xFF0092B8),
              ],
            ),
            image: DecorationImage(
              image: AssetImage('assets/buttons/$icon.png'), // use the parameter
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFA855F7).withOpacity(0.62),
                blurRadius: 35.19,
                spreadRadius: 0,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
