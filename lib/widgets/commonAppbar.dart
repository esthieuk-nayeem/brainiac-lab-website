import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button.dart';
import 'navButton.dart';

class CommonAppBar extends StatefulWidget {
  Widget body;
  CommonAppBar({required this.body});

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
    SizedBox(
      height: 20,
    ),
    NavbarButton(text: "Courses", onPressed: () {}),
    SizedBox(
      height: 20,
    ),
    NavbarButton(text: "Success Stories", onPressed: () {}),
    SizedBox(
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
      backgroundColor: Color(0xFF0b1120),
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Color(0xFF0b1120),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  if (width > 400)
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed('/');
                          },
                          child: Row(
                            children: [
                              Container(
                                  height: 35,
                                  child: Image(
                                      image: AssetImage("assets/default.png"))),
                              SizedBox(
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
                        ),
                        flex: -1),
                  Spacer(),
                  if (!isMobile) ...listItems,
                  Spacer(),
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
                          icon: Icon(
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
                decoration: BoxDecoration(color: Color(0xFF0b1120)),
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
                        icon: Icon(
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
