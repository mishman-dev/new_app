import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/data/constants.dart';
import 'package:new_app/views/widgets/path_card.dart';
import 'package:new_app/views/widgets/step_counter.dart';

class SelectPathPage extends StatelessWidget {
  const SelectPathPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 51),
                  child: SizedBox(
                    width: 328.02,
                    height: 1740.55,
                    child: Column(
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color.fromRGBO(194, 122, 255, 1),
                              Color.fromRGBO(0, 211, 242, 1),
                            ],
                          ).createShader(bounds),
                          child: Column(
                            children: [
                              Text(
                                'SELECT YOUR PATH',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.orbitron(
                                  fontSize: 30,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      Colors.white, // required for ShaderMask
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 32),
                        SizedBox(
                          width: 328.66,
                          height: 45.49,
                          child: Text(
                            'Choose your combat specialization. This determines your initial stat distribution.',
                            style: GoogleFonts.rajdhani(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(153, 161, 175, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 32),
                        PathCard(
                          borderColor: Color(0xFFFB2C36),
                          title: 'FIGHTER',
                          description:
                              'Masters of close combat and physical prowess',
                          iconAssetPath: 'assets/buttons/sword.png',
                          topHighlightColor: const Color(
                            0xFFFB2C36,
                          ).withOpacity(0.4),
                          cardBackgroundGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0xFF82181A,
                              ).withOpacity(0.2), // rgba(130, 24, 26, 0.2)
                              const Color(
                                0xFF7E2A0C,
                              ).withOpacity(0.2), // rgba(126, 42, 12, 0.2)
                            ],
                          ),
                          iconBackgroundGradient: const LinearGradient(
                            colors: [Color(0xFFFB2C36), Color(0xFFFF6900)],
                          ),
                          tag1Text: 'Focus: Strength & Vitality',
                          tag1ThemeColor: const Color(0xFFC27AFF),
                          tag2Text: 'Direct confrontation, high damage output',
                          tag2ThemeColor: const Color(0xFF00D3F2),
                        ),
                        SizedBox(height: 15),
                        PathCard(
                          borderColor: Color(0xFFAD46FF),
                          title: 'ASSASSIN',
                          description:
                              'Swift and deadly, striking from the shadows',
                          iconAssetPath: 'assets/buttons/assassin.png',
                          topHighlightColor: const Color(
                            0xFFAD46FF,
                          ).withOpacity(0.4),
                          cardBackgroundGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0xFF59168B,
                              ).withOpacity(0.2), // rgba(130, 24, 26, 0.2)
                              const Color(
                                0xFF861043,
                              ).withOpacity(0.2), // rgba(126, 42, 12, 0.2)
                            ],
                          ),
                          iconBackgroundGradient: const LinearGradient(
                            colors: [Color(0xFFAd46ff), Color(0xFFf6339a)],
                          ),
                          tag1Text: 'Focus: Agility & Precision',
                          tag1ThemeColor: const Color(0xFFC27AFF),
                          tag2Text: 'Speed-based attacks, critical strikes',
                          tag2ThemeColor: const Color(0xFF00D3F2),
                        ),
                        SizedBox(height: 15),
                        PathCard(
                          borderColor: Color(0xFF2B7FFF),
                          title: 'MAGE',
                          description:
                              'Wielders of arcane power and devastating spells',
                          iconAssetPath: 'assets/buttons/mage.png',
                          topHighlightColor: const Color(
                            0xFF2B7FFF,
                          ).withOpacity(0.4),
                          cardBackgroundGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0xFF2B7FFF,
                              ).withOpacity(0.2), // rgba(130, 24, 26, 0.2)
                              const Color(
                                0xFF00B8DB,
                              ).withOpacity(0.2), // rgba(126, 42, 12, 0.2)
                            ],
                          ),
                          iconBackgroundGradient: const LinearGradient(
                            colors: [Color(0xFF2B7FFF), Color(0xFF00B8DB)],
                          ),
                          tag1Text: 'Focus: Intelligence & Mana',
                          tag1ThemeColor: const Color(0xFFC27AFF),
                          tag2Text: 'Ranged magic attacks, crowd control',
                          tag2ThemeColor: const Color(0xFF00D3F2),
                        ),
                        SizedBox(height: 15),
                        PathCard(
                          borderColor: Color(0xFF00C950),
                          title: 'TANK',
                          description: 'Immovable defenders who protect allies',
                          iconAssetPath: 'assets/buttons/tank.png',
                          topHighlightColor: const Color(
                            0xFF00C950,
                          ).withOpacity(0.4),
                          cardBackgroundGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0x0D542B33,
                              ).withOpacity(0.2), // rgba(130, 24, 26, 0.2)
                              const Color(
                                0x004F3B33,
                              ).withOpacity(0.2), // rgba(126, 42, 12, 0.2)
                            ],
                          ),
                          iconBackgroundGradient: const LinearGradient(
                            colors: [Color(0xFF00C950), Color(0xFF00BC7D)],
                          ),
                          tag1Text: 'Focus: Defense & Endurance',
                          tag1ThemeColor: const Color(0xFFC27AFF),
                          tag2Text: 'Damage absorption, team protection',
                          tag2ThemeColor: const Color(0xFF00D3F2),
                        ),
                        SizedBox(height: 15),
                        PathCard(
                          borderColor: Color(0xFfF0B100),
                          title: 'STRATEGIST',
                          description:
                              'Tactical geniuses who outthink their opponents',
                          iconAssetPath: 'assets/buttons/brain.png',
                          topHighlightColor: const Color(
                            0xFFF0B100,
                          ).withOpacity(0.4),
                          cardBackgroundGradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(
                                0x733E0A33,
                              ).withOpacity(0.2), // rgba(130, 24, 26, 0.2)
                              const Color(
                                0x7B330633,
                              ).withOpacity(0.2), // rgba(126, 42, 12, 0.2)
                            ],
                          ),
                          iconBackgroundGradient: const LinearGradient(
                            colors: [Color(0xFFF0B100), Color(0xFFFE9A00)],
                          ),
                          tag1Text: 'Focus: Intelligence & Perception',
                          tag1ThemeColor: const Color(0xFFC27AFF),
                          tag2Text:
                              'Buff allies, debuff enemies, analyze weaknesses',
                          tag2ThemeColor: const Color(0xFF00D3F2),
                        ),
                        SizedBox(height: 32),
                        SizedBox(
                          width: 328.66,
                          height: 122.43,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              17.1,
                              13.11,
                              17.1,
                              17.1,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromRGBO(173, 70, 255, 0.3),
                              ),
                              color: Color.fromRGBO(89, 22, 139, 0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NOTE',
                                  style: GoogleFonts.rajdhani(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.3,
                                    color: Color.fromRGBO(194, 122, 255, 1),
                                  ),
                                ),
                                SizedBox(height: 4),
                                SizedBox(
                                  height: 69,
                                  width: 294,
                                  child: Text(
                                    'Your class choice affects initial stats but does not limit your growth. All stats can be improved through training and quests.',
                                    style: GoogleFonts.rajdhani(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0,
                                      color: Color.fromRGBO(209, 213, 220, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF9810FA), Color(0xFF0092B8)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(
                            1.5,
                          ), // border thickness
                          child: Container(
                            width: 345.28,
                            height: 59.96,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'CONFIRM SELECTION',
                                  style: GoogleFonts.orbitron(
                                    fontSize: 16,
                                    letterSpacing: 0.8,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(
                                      238,
                                      238,
                                      238,
                                      1,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Image.asset('assets/buttons/right_arrow.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 34),
                        SizedBox(
                          width: 345.28,
                          height: 8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 8,
                            children: [
                              IndicatorDot(isActive: true),
                              IndicatorDot(isActive: true),
                              IndicatorDot(isActive: false),
                              IndicatorDot(isActive: false),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
