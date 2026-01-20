import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app/data/constants.dart';
import 'package:new_app/views/pages/select_path_page.dart';
import 'package:new_app/views/widgets/indicator_dot.dart';
import 'package:new_app/views/widgets/step_counter.dart';

class CreateProfilePage extends StatelessWidget {
  const CreateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(gradient: backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 345.28,
                height: 680.63,
                child: Column(
                  children: [
                    SparkCircle(icon: 'profile'),
                    SizedBox(height: 20),
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
                            'CREATE PROFILE',
                            style: GoogleFonts.orbitron(
                              fontSize: 30,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w400,
                              color: Colors.white, // required for ShaderMask
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Register your identity with the System',
                            style: GoogleFonts.rajdhani(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(152, 161, 175, 1),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 345.28,
                            height: 460,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 345.28,
                                  height: 105.67,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'HUNTER NAME',
                                        style: GoogleFonts.orbitron(
                                          fontSize: 14,
                                          letterSpacing: 0.35,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            194,
                                            122,
                                            255,
                                            1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      TextField(
                                        controller: controller,
                                        style: GoogleFonts.orbitron(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: 'Enter your name',
                                          hintStyle: GoogleFonts.orbitron(
                                            color: const Color.fromRGBO(
                                              106,
                                              114,
                                              130,
                                              1,
                                            ),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              8.0,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: 4),
                                      Text(
                                        'This name will be displayed throughout your journey',
                                        style: GoogleFonts.rajdhani(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            106,
                                            114,
                                            130,
                                            1,
                                          ),
                                        ),
                                      ),
                                      SizedBox(),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 12),
                                SizedBox(
                                  width: 345.28,
                                  height: 99.68,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                      17.1,
                                      13.11,
                                      17.1,
                                      17.1,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(
                                          173,
                                          70,
                                          255,
                                          0.3,
                                        ),
                                      ),
                                      color: Color.fromRGBO(89, 22, 139, 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'INITIAL ASSIGNMENT',
                                          style: GoogleFonts.rajdhani(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.3,
                                            color: Color.fromRGBO(
                                              194,
                                              122,
                                              255,
                                              1,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        SizedBox(
                                          height: 46,
                                          width: 308,
                                          child: Text(
                                            'Your true potential will be revealed through dedication.',
                                            style: GoogleFonts.rajdhani(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0,
                                              color: Color.fromRGBO(
                                                209,
                                                213,
                                                220,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  width: 345.28,
                                  height: 99.68,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                      17.1,
                                      11.11,
                                      47.1,
                                      17.1,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(
                                          173,
                                          70,
                                          255,
                                          0.3,
                                        ),
                                      ),
                                      color: Color.fromRGBO(16, 78, 100, 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SYSTEM RECORD',
                                          style: GoogleFonts.rajdhani(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.3,
                                            color: Color.fromRGBO(
                                              0,
                                              211,
                                              242,
                                              1,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        SizedBox(
                                          height: 45.49,
                                          width: 311.07,
                                          child: Text(
                                            'The System will track your progress, achievements, and growth permanently.',
                                            style: GoogleFonts.rajdhani(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0,
                                              color: Color.fromRGBO(
                                                209,
                                                213,
                                                220,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    if (controller.text.trim().isNotEmpty) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SelectPathPage(),
                                          ),
                                        );
                                      }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF9810FA),
                                          Color(0xFF0092B8),
                                        ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'CONTINUE',
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
                                          Image.asset(
                                            'assets/buttons/right_arrow.png',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                SizedBox(
                                  width: 345.28,
                                  height: 8,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 8,
                                    children: [
                                      IndicatorDot(isActive: true),
                                      IndicatorDot(isActive: false),
                                      IndicatorDot(isActive: false),
                                      IndicatorDot(isActive: false),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
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
    );
  }
}