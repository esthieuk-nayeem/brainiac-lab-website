import 'package:brainiac_web/responsive.dart';
import 'package:brainiac_web/widgets/textCard.dart';
import 'package:brainiac_web/widgets/whyUs_Card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardCard extends StatelessWidget {


  const DashboardCard({super.key, 


  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      // height: height * .6,
      width: width * .7,
      decoration: BoxDecoration(
        color: const Color(0xFF282D45).withOpacity(.07),
        borderRadius: BorderRadius.circular(25)
        
      ),
     
      child: Stack(children: [
        Container(
          width: width * .15,
          height: height * .2,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.color,
            shape: BoxShape.circle,
            color: const Color(0xFF32CAFD).withOpacity(0.01),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF32CAFD).withOpacity(0.5),
                blurRadius: 250,
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: (height * .18), left: (width * .7) * .8),
          child: Container(
            width: (width * .7) * .5,
            height: (height * .18),
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              shape: BoxShape.circle,
              color: const Color(0xFF32CAFD).withOpacity(0.01),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF32CAFD).withOpacity(0.5),
                  blurRadius: 250,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: height * .06, left: 20, right: 20, bottom: .06),
          child: SingleChildScrollView(
              child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: 1.0,
            child: Responsive.isDesktop(context)
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Expert Instructors",),


                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Interactive Learning",

                          ),


                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Progress Tracking",),

                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Engaging Content",
                             ),


                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Value & Affordability",
                              ),


                          WhyUsCard(height: height * .95,
                              width: (width * .95),
                              color: Color(0xFFDF385B),
                              icon: Icon(Icons.abc),
                              primaryText: "Empowering Women",
                              ),

                        ],
                      ),
                    ],
                  )
                : const Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 15,
                    runAlignment: WrapAlignment.center,
                    runSpacing: 15,
                    children: [
                        TextCard(
                          subText: "1000 taka",
                          mainText: "IELTS Crash Course",
                        ),
                      ]),
          )),
        ),
      ]),
    );
  }
}
