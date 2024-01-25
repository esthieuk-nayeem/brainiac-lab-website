import 'package:brainiac_web/screens/IELTS_Page/ieltsDetails.dart';
import 'package:brainiac_web/screens/landing_page/homePage.dart';
import 'package:brainiac_web/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'screens/landing_page/landingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        title: 'Brainiac Lab',
        theme: ThemeData(backgroundColor: Color(0xFF0b1120)),
        home: const LandingPage());
  }
}
