import 'package:flutter/material.dart';

const backgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  // The three color stops from your screenshot
  colors: [
    Color(0xFF000000), // Black at the top
    Color(0xFF3C0366), // Deep Purple
    Color(0xFF000000), // Black at the bottom
  ],
  // This positions the purple exactly at the 20% mark
  stops: [0.1, 0.6, 1.0],
);
