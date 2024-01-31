import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyUsCard extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Icon icon;
  final String primaryText;

  WhyUsCard({
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
    required this.primaryText,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      width: (width * 0.7) * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: (width * 0.5) * 0.02),
            child: Container(
              color: color,
              height: (height * 0.1) * 0.4,
              width: (width * 0.7) * 0.035,
              child: Center(
                child: icon,
              ),
            ),
          ),
          SizedBox(
            width: (width * 0.5) * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                primaryText,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              // Text(
              //   secondText,
              //   style: GoogleFonts.spaceGrotesk(
              //     fontSize: 12,
              //     fontWeight: FontWeight.w500,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}