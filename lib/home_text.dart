import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  final String? title;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const HomeText(this.title,
      {Key? key, this.fontColor, this.fontSize, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontSize: fontSize ?? 60,
        fontWeight: fontWeight,
        color: fontColor ?? Colors.white,
      ),
    );
  }
}
