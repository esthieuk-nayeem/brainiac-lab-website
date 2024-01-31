import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewCard extends StatelessWidget {
  final index;
  const ReviewCard({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            width: 392,
            height: 110,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFFA64CE8),
              Color(0xFFA8E9ff),
              Color(0xFFC6FFE0)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Container(
            height: 235,
            width: 343,
            color: const Color(0xFF0E1330),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Month - 1",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.hindSiliguri(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 23),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Text(
                    "প্রথম মাসে একদম IELTS এর বেসিক থেকে শেখানো হবে। যারা একদম ই তেমন একটা প্রেপারেশন নেন নি কখনো তারা একদম বেসিক থেকে শিখতে পারবেন। সাথে থাকবে রেগুলার এসাইনমেন্টে। ",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.hindSiliguri(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
