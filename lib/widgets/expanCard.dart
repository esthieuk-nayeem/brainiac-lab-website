import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpanCard extends StatefulWidget {
  const ExpanCard({super.key});

  @override
  State<ExpanCard> createState() => _ExpanCardState();
}

class _ExpanCardState extends State<ExpanCard> {
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
      child: AnimatedContainer(
        curve: Curves.easeInToLinear,
        duration: Duration(microseconds: 200),
        transform: transform,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFF060B27),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 20),
            height: 130,
            width: width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      "Hello",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 16,
                      width: 30,
                      child: Chip(
                        label: Text(
                          "5%",
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Color.fromRGBO(255, 167, 190, 0.1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Main Text",
                  style: GoogleFonts.bungee(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 24),
                )
              ],
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
