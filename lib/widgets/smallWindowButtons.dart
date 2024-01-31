import 'package:flutter/material.dart';

class WindowButton extends StatelessWidget {
  final margin;
  final color;

  const WindowButton({super.key, this.margin, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 10,
      width: 10,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
