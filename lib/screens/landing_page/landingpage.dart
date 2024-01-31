import 'package:brainiac_web/widgets/commonAppbar.dart';
import 'package:brainiac_web/screens/landing_page/homePage.dart';
import 'package:flutter/material.dart';

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
      body: const Home(),
    );
  }
}
