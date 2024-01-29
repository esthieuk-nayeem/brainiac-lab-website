import 'package:brainiac_web/screens/IELTS_Page/ieltsDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCard extends StatefulWidget {
  final mainText;
  final subText;
  final navigate;

  TextCard({this.navigate, this.mainText, this.subText});

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
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
        onTap: () {},
        child: AnimatedContainer(
          curve: Curves.easeInToLinear,
          duration: Duration(microseconds: 200),
          // transform: transform,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF151934).withOpacity(.3)),
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
