import 'package:brainiac_web/widgets/expanCard.dart';
import 'package:brainiac_web/widgets/smallWindowButtons.dart';
import 'package:brainiac_web/widgets/welcomeUser.dart';
import 'package:flutter/material.dart';
import '../../widgets/courseCard.dart';

class LandingImage extends StatefulWidget {
  const LandingImage({super.key});

  @override
  State<LandingImage> createState() => _LandingImageState();
}

class _LandingImageState extends State<LandingImage> {
  bool expand = false;
  bool visible = false;
  @override
  void initState() {
    // TODO: implement initState
    startOpacity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Wrap(children: [
      IntrinsicHeight(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF070C22),
                    Color(0xFF080C20),
                    Color(0xFF080B1D),
                    Color(0xFF090B1B),
                    Color(0xFF090B19),
                    Color(0xFF090B18),
                    Color(0xFF0A0B18),
                    Color(0xFF0A0B17),
                    Color(0xFF0B0B18),
                    Color(0xFF0B0B18),
                    Color(0xFF0C0A19),
                    Color(0xFF0D0A19),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 26, 151, 110).withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 3,
                  ),
                ],
                border: Border.all(width: 0.9, color: Color(0xFF282D45))),
            width: width * 0.6,
            child: Stack(
              children: [
                Container(
                  height: 20,
                  width: width * 0.9,
                  color: Color(0xFF282D45).withOpacity(0.9),
                ),
                //  window buttons small
                WindowButton(
                  margin: EdgeInsets.all(5),
                  color: Colors.redAccent.withOpacity(0.5),
                ),
                WindowButton(
                  margin: EdgeInsets.only(left: 25, top: 5),
                  color: Colors.greenAccent.withOpacity(0.5),
                ),
                WindowButton(
                  margin: EdgeInsets.only(left: 45, top: 5),
                  color: Colors.blueGrey.withOpacity(0.5),
                ),

                WelcomeUser(),
                Container(
                  padding: const EdgeInsets.only(
                    top: 100,
                  ),
                  width: width * 0.9,
                  child: Divider(
                    thickness: .5,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 130, left: 20, right: 20, bottom: 20),
                  child: SingleChildScrollView(
                      child: AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: visible ? 1.0 : 0,
                    child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        spacing: 15,
                        runAlignment: WrapAlignment.center,
                        runSpacing: 15,
                        children: [
                          CourseCard(
                            image: Image.asset("Shield-Fail.png"),
                            subText: "1000 taka",
                            mainText: "IELTS Crash Course",
                          ),
                          CourseCard(
                            image: Image.asset("Shield-Fail.png"),
                            subText: "1000 taka",
                            mainText: "Youngster's English Course",
                          ),
                          CourseCard(
                            image: Image.asset("Shield-Fail.png"),
                            subText: "1000 taka",
                            mainText: "Mother's English Course",
                          ),
                          CourseCard(
                            image: Image.asset("Shield-Fail.png"),
                            subText: "1000 taka",
                            mainText: "English For MEN",
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ]),
                  )),
                ),
              ],
            )),
      ),
    ]);
  }

  void startOpacity() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      visible = true;
    });
  }
}
