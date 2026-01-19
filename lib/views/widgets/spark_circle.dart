import 'package:flutter/material.dart';

class SparkCircle extends StatelessWidget {
  const SparkCircle({super.key});

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
            image: const DecorationImage(
              image: AssetImage('assets/buttons/spark.png'),
              fit: BoxFit.scaleDown, 
              alignment: Alignment.center,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFA855F7).withOpacity(0.62),
                blurRadius: 35.19,
                spreadRadius: 0,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
