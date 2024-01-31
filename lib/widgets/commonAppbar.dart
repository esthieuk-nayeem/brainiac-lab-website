import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'navButton.dart';

class CommonAppBar extends StatefulWidget {
  Widget body;
  CommonAppBar({super.key, required this.body});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool isMobile = false;

  List<Widget> listItems = [
    NavbarButton(
        text: "Home",
        onPressed: () {
          Get.toNamed('/');
        }),
    const SizedBox(
      height: 20,
    ),
    NavbarButton(text: "Courses", onPressed: () {}),
    const SizedBox(
      height: 20,
    ),
    NavbarButton(text: "Success Stories", onPressed: () {}),
    const SizedBox(
      height: 20,
    ),
    NavbarButton(text: "Student Feedback", onPressed: () {})
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    MediaQuery.of(context).size.width < 850
        ? isMobile = true
        : isMobile = false;

    return Scaffold(
      backgroundColor: const Color(0xFF0b1120),
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: const Color(0xFF0b1120),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  if (width > 400)
                    Expanded(
                        flex: -1,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/');
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                  height: 35,
                                  child: Image(
                                      image: AssetImage("assets/default.png"))),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Brainiac Lab",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w200),
                              )
                            ],
                          ),
                        )),
                  const Spacer(),
                  if (!isMobile) ...listItems,
                  const Spacer(),
                  !isMobile
                      ? Button(
                          text: "Login",
                          onPressed: () {},
                        )
                      : IconButton(
                          onPressed: () {
                            print("Cross pressed");
                            scaffoldKey.currentState?.openEndDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                          )),
                ],
              ),
            ),
          ),
        ),
      ),
      endDrawer: isMobile
          ? Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Color(0xFF0b1120)),
                child: Stack(children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listItems,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width - 55, top: 10),
                    child: IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {
                          print("Cross pressed");
                          scaffoldKey.currentState?.closeEndDrawer();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  )
                ]),
              ),
            )
          : null,
      body: widget.body,
    );
  }
}
