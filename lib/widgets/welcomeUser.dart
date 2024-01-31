import 'package:brainiac_web/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'calenderButton.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 22),
      height: 100,
      width: width * 0.85,
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          // CircleAvatar(
          //   child: Image.asset("default.png"),
          // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Learner....!",
                textAlign: TextAlign.start,
                style: GoogleFonts.aclonica(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "Explore our online courses!",
                textAlign: TextAlign.start,
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          const Spacer(),

          if (Responsive.isDesktop(context))
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: CalenderButton(),
            ),
        ],
      ),
    );
  }
}
