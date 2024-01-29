import 'package:brainiac_web/responsive.dart';
import 'package:brainiac_web/widgets/courseCard.dart';
import 'package:brainiac_web/widgets/textCard.dart';
import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String text;

  DashboardCard({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      // height: height * .6,
      width: width * .7,
      color: Color(0xFF282D45).withOpacity(.07),
      child: Stack(children: [
        Container(
          width: width * .15,
          height: height * .2,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.color,
            shape: BoxShape.circle,
            color: Color(0xFF32CAFD).withOpacity(0.01),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF32CAFD).withOpacity(0.5),
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
              color: Color(0xFF32CAFD).withOpacity(0.01),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF32CAFD).withOpacity(0.5),
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
            duration: Duration(milliseconds: 500),
            opacity: 1.0,
            child: Responsive.isDesktop(context)
                ? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.white.withOpacity(.5),
                                    width: .5)),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: (width * .5) * .02),
                                  child: Container(
                                    color: Colors.red,
                                    height: (height * .1) * .6,
                                    width: ((width * .7) * .05),
                                    child: Center(
                                      child: Icon(
                                          Icons.cast_for_education_outlined),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: (width * .5) * .02,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("We are the best"),
                                    Text("Provide best online class")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            color: Colors.red,
                          ),
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            color: Colors.red,
                          ),
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            color: Colors.red,
                          ),
                          Container(
                            height: height * .1,
                            width: (width * .7) * .3,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  )
                : Wrap(
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
