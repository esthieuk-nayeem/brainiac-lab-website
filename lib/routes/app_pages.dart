import 'package:brainiac_web/screens/IELTS_Page/ieltsDetails.dart';
import 'package:brainiac_web/screens/landing_page/landingpage.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const LandingPage(),
    ),
    GetPage(
        name: _Paths.IELTS,
        page: () => const IeltsDetails(),
        transition: Transition.zoom),
  ];
}
