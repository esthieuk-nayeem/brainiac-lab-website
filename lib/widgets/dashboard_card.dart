import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String text;

  DashboardCard({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .45,
      width: width * .7,
      color: Color(0xFF282D45).withOpacity(.1),
      child: Stack(children: []),
    );
  }
}
