import 'package:brainiac_web/widgets/button.dart';
import 'package:brainiac_web/widgets/commonAppbar.dart';
import 'package:brainiac_web/widgets/navButton.dart';
import 'package:brainiac_web/screens/landing_page/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return CommonAppBar(
      body: Home(),
    );
  }
}
