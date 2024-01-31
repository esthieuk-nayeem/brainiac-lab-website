import 'package:brainiac_web/responsive.dart';
import 'package:brainiac_web/screens/landing_page/landingImage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../widgets/button.dart';
import '../../widgets/dashboard_card.dart';
import '../../widgets/footer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Wrap(
        children: [
          IntrinsicHeight(
            child: Container(
              color: const Color(0xFF0b1120),
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: width * .45,
                  ),
                  child: Container(
                    width: width * .15,
                    height: height * .2,
                    decoration: BoxDecoration(
                      backgroundBlendMode: BlendMode.color,
                      shape: BoxShape.circle,
                      color: const Color(0xFF7214FF).withOpacity(0.01),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF7214FF).withOpacity(0.5),
                          blurRadius: width * .5,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * .88, top: height * .5),
                  child: Container(
                    width: 200,
                    height: 180,
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
                  padding: EdgeInsets.only(top: height * .5),
                  child: Container(
                    width: 200,
                    height: 180,
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
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: width * (1 / 7), right: width * (1 / 7), top: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        GradientText(
                          "Your go-to ONLINE learning platform!",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aclonica(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            textStyle: Theme.of(context).textTheme.bodySmall,
                          ),
                          colors: const [Color(0xFFF6F6F7), Color(0xFF7E808F)],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "ঘরে বসে প্রস্তুতি নিন এবং আপনার স্কিল গড়ুন আমাদের সাথে। বিস্তারিত ডিটেইলস দেখুন আমাদের ওয়েবসাইটে। ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: const Color(0xFF8F9BB7),
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            Button(
                              text: "Get a demo",
                              onPressed: () {},
                              width: 120,
                            ),
                            // Button(
                            //   text: "View Prices",
                            //   onPressed: () {},
                            //   width: 120,
                            // ),
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        const LandingImage(),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: GradientText(
                "কেন Brainiac Lab-তে আস্থা রাখবে?",
                textAlign: TextAlign.center,
                style: GoogleFonts.aclonica(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  textStyle: Theme.of(context).textTheme.bodySmall,
                ),
                colors: const [Color(0xFFF6F6F7), Color(0xFF7E808F)],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height * .05,
              // bottom: height * .05,
            ),
            child: SizedBox(
              width: width,
              // height: height,
              child: const Center(
                child: DashboardCard(
                  ),
              ),
            ),
          ),
          if (Responsive.isDesktop(context)) const Footer()
        ],
      ),
    );
  }
}
