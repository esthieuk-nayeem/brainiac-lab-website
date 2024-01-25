import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFF0b1120),
      height: height * .2,
      width: width,
      child: Wrap(
        children: [
          Divider(
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 35, child: Image.asset("default.png")),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Brainiac Lab",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_city_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Online based company",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "brainiaclab29@gmail.com",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "+8801863899314",
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child:
                          Text("Home", style: TextStyle(color: Colors.white)),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("About Us",
                          style: TextStyle(color: Colors.white)),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("Success Stories",
                          style: TextStyle(color: Colors.white)),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Follow us",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
