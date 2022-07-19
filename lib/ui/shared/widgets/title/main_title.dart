import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final double fontSize;
  const MainTitle({Key? key, required this.fontSize}) : super(key: key);
  final String title = "assistant";
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
            color: const Color(0xffee6665)),
        textAlign: TextAlign.center);
  }
}
