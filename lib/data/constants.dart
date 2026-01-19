import 'package:flutter/material.dart';

const backgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF000000), // Pure Black
    Color(0xFF3C0366), // Deep Purple
    Color(0xFF000000), // Pure Black
  ],
  // The '20%' in your screenshot likely refers to the stop of the purple color
  stops: [0.0, 0.2, 1.0], 
);