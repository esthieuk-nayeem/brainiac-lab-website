import 'package:brainiac_web/screens/IELTS_Page/ieltsDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCard extends StatefulWidget {
  final Widget image;
  final mainText;
  final subText;
  final navigate;

  CourseCard({required this.image, this.navigate, this.mainText, this.subText});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hoveredTransform = Matrix4.identity()..translate(0, -3, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
      onEnter: (event) {
        onEntered(true);
      },
      onExit: (event) {
        onEntered(false);
      },
      child: GestureDetector(
        onTap: () {
          // Get.toNamed('/ielts');
          Get.toNamed('/ielts');
        },
        child: AnimatedContainer(
          curve: Curves.easeInToLinear,
          duration: Duration(microseconds: 200),
          transform: transform,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: isHovered
                    ? LinearGradient(
                        colors: [Color(0xFF177f93), Color(0xFF4ec0a0)])
                    : LinearGradient(colors: [
                        Color.fromARGB(255, 11, 80, 76),
                        Color(0xFF060B27)
                      ])),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              // height: 70,
              width: width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      Text(
                        widget.mainText,
                        style: GoogleFonts.spaceGrotesk(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 24),
                      ),
                      isHovered
                          ? Image.asset(
                              'Saly-43.png',
                              height: 40,
                              width: 40,
                            )
                          : Text("")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
