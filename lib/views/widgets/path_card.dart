import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PathCard extends StatelessWidget {
  // Define parameters for customizability
  final String title;
  final String description;
  final String iconAssetPath;
  final LinearGradient cardBackgroundGradient;
  final LinearGradient iconBackgroundGradient;
  final Color topHighlightColor;
  final Color borderColor;

  // Tag 1 (e.g., Strength & Vitality)
  final String tag1Text;
  final Color tag1ThemeColor;

  // Tag 2 (e.g., Damage output)
  final String tag2Text;
  final Color tag2ThemeColor;

  const PathCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconAssetPath,
    required this.cardBackgroundGradient,
    required this.iconBackgroundGradient,
    required this.topHighlightColor,
    required this.tag1Text,
    required this.tag1ThemeColor,
    required this.tag2Text,
    required this.tag2ThemeColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.06, // Dimensions from Figma
      width: 328.66,
      child: Stack(
        children: [
          // 1. MAIN CARD CONTAINER
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor.withOpacity(0.4)),
              gradient: cardBackgroundGradient,
              borderRadius: BorderRadius.circular(12), // Radius from Figma
            ),
            child: Center(
              child: SizedBox(
                height: 193.86,
                width: 284.46,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ICON CONTAINER
                    SizedBox(
                      height: 55.99,
                      width: 55.99,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: iconBackgroundGradient,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(iconAssetPath),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // TEXT CONTENT
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.orbitron(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFEEEEEE),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            description,
                            style: GoogleFonts.rajdhani(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFD1D5Dc),
                            ),
                          ),
                          const SizedBox(height: 12),
                          // TAGS
                          _buildCustomTag(tag1Text, tag1ThemeColor),
                          const SizedBox(height: 8),
                          _buildCustomTag(tag2Text, tag2ThemeColor),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // 2. TOP SIDE HIGHLIGHT (The "Linear Thing")
          Positioned(
            top: 1,
            left: 0,
            right: 1,
            child: Container(
              height: 6, // Border width from Figma
              decoration: BoxDecoration(
                color: topHighlightColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for tags to keep code dry
  Widget _buildCustomTag(String text, Color themeColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: themeColor.withOpacity(0.2), width: 1.11),
      ),
      child: Text(
        text,
        style: GoogleFonts.rajdhani(
          color: themeColor,
          fontSize: 12,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
