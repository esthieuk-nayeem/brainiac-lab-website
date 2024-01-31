import 'package:brainiac_web/widgets/commonAppbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../widgets/button.dart';

class IeltsDetails extends StatefulWidget {
  const IeltsDetails({super.key});

  @override
  State<IeltsDetails> createState() => _IeltsDetailsState();
}

class _IeltsDetailsState extends State<IeltsDetails> {
  @override
  late ScrollController _controller;
  double pixels = 0.0;

  bool animate = false;
  @override
  void initState() {
    // TODO: implement initState
    startAnimate();

    _controller = ScrollController();
    _controller.addListener(() {
      setState(() {
        pixels = _controller.position.pixels;
        print(_controller.position.pixels);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = false;

    MediaQuery.of(context).size.width < 800
        ? isMobile = true
        : isMobile = false;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return CommonAppBar(
      body: SingleChildScrollView(
        controller: _controller,
        child: Wrap(
          children: [
            Center(
              heightFactor: 3,
              child: GradientText(
                "IELTS Crash Course for Everyone",
                textAlign: TextAlign.center,
                style: GoogleFonts.aclonica(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  textStyle: Theme.of(context).textTheme.bodySmall,
                ),
                colors: const [Color(0xFFF6F6F7), Color(0xFF7E808F)],
              ),
            ),
            Container(
              height: height - 100,
              color: const Color(0xFF0b1120),
              child: Stack(children: [
                Positioned(
                    left: width * .5,
                    child: SizedBox(
                      width: width * .5 - 50,
                      // height: height,
                      child: Stack(children: [
                        Center(
                          child: AnimatedOpacity(
                            opacity: animate ? 1.0 : 0.0,
                            duration: const Duration(seconds: 2),
                            curve: Curves.ease,
                            child: AnimatedPadding(
                              curve: Curves.ease,
                              duration: const Duration(seconds: 2),
                              padding: EdgeInsets.only(
                                left: animate ? 0.0 : 500.0,
                              ),
                              child: Column(
                                children: [
                                  isMobile
                                      ? AnimatedPadding(
                                          curve: Curves.ease,
                                          duration: const Duration(seconds: 1),
                                          padding: EdgeInsets.only(
                                            left: animate ? 0.0 : 500.0,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              alignment: Alignment.centerLeft,
                                              'assets/booklover.png',
                                              height: 200,
                                              width: 300,
                                            ),
                                          ))
                                      : Container(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "IELTS এ ভালো করাটা সম্পূর্ন নিজের consistent preparation এবং একটি ভালো গাইডলানের উপর নির্ভর করে।আমরা আমাদের এই কোর্স সাজিয়েছি স্টেপ ওয়াইজ, স্টেপ বাই স্টেপ প্রথম থেকে ফাইনাল টেস্ট পর্যন্ত। এই 2 মাস এর কোর্সটি তে আপনাকে একটি ভালো গাইডলানের(class, assignment, homework, mock test) মাধ্যমে পড়ানো হবে যাতে আপনার এই 2 মাস consistent একটা preparation হয়ে যায়। ",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 23),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    "Overall , আপনারা যাতে এই 2 মাসের কোর্স সিরিয়াসলি শেষ করে যাতে সময় নষ্ট না করেই Final IELTS TEST দিতে পারেন সে ভাবে ক্লাস, এসাইনমেন্ট আর মক টেস্ট এর মাধ্যমে আপনাদের প্রস্তুত করা হবে।",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 23),
                                  ),
                                  const SizedBox(
                                    height: 70,
                                  ),
                                  Text(
                                    "Learning Method : Online",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Course Duration : 2 Months",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Total classes : 24 ",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Class duration : 1 hour 20 minutes ",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Total Mock tests : 5 Mock (2 live mock + 3 self mock) ",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Weekly 3 days",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Class Platform : Google Meet",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  Text(
                                    "Course Fee : 2000 taka Per Month",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.hindSiliguri(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 23),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Button(
                                    text: "Register Now!",
                                    onPressed: () {},
                                    width: 200,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ]),
                    )),
                AnimatedPositioned(
                    curve: Curves.ease,
                    duration: const Duration(seconds: 1),
                    left: animate ? 10 : -300,
                    child: Image.asset(
                      alignment: Alignment.centerLeft,
                      'ielts.png',
                      height: height * .7,
                      width: width * .4,
                    )),
              ]),
            ),
            // Center(
            //   child: GradientText(
            //     "IELTS Course for Beginers",
            //     textAlign: TextAlign.center,
            //     style: GoogleFonts.aclonica(
            //       fontSize: 32,
            //       fontWeight: FontWeight.w400,
            //       textStyle: Theme.of(context).textTheme.bodySmall,
            //     ),
            //     colors: [Color(0xFFF6F6F7), Color(0xFF7E808F)],
            //   ),
            // ),
            // AnimatedOpacity(
            //   opacity: pixels >= 300 ? 1.0 : 0.0,
            //   duration: Duration(seconds: 2),
            //   curve: Curves.ease,
            //   child: AnimatedPadding(
            //     curve: Curves.ease,
            //     duration: Duration(seconds: 2),
            //     padding: EdgeInsets.only(
            //       left: pixels >= 300 ? 0.0 : 500.0,
            //     ),
            //     child: Container(
            //       padding: EdgeInsets.only(top: 10),
            //       height: height * .7,
            //       width: width,
            //       child: Center(
            //         child: Wrap(
            //           alignment: WrapAlignment.spaceBetween,
            //           spacing: 25,
            //           runAlignment: WrapAlignment.center,
            //           runSpacing: 25,
            //           children: [ReviewCard(), ReviewCard(), ReviewCard()],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  void startAnimate() async {
    await Future.delayed(const Duration(milliseconds: 200));
    setState(() {
      animate = true;
    });
  }
}
