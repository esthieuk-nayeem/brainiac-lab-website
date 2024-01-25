import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalenderButton extends StatelessWidget {
  const CalenderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 124,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.date_range_outlined,
            color: Colors.white,
          ),
          Text(
            DateTime.now().toString().split(' ')[0],
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
