import 'package:app/data/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OpenedSideBox extends StatelessWidget {
  const OpenedSideBox({
    Key? key,
    this.icon,
    this.iconColor,
    this.boxColor,
    this.textColor,
    this.title,
  }) : super(key: key);
  final IconData? icon;
  final Color? iconColor;
  final Color? boxColor;
  final Color? textColor;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(bottom: 30.0),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        color: boxColor ?? const Color(0xFFE2D8D8),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Icon(
          icon,
          color: iconColor ?? const Color(0xFF868686),
        ),
        const SizedBox(
          width: 25.0,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              "$title",
              style: TextStyle(
                  color: textColor ?? const Color.fromARGB(255, 77, 77, 77),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ]),
    );
  }
}
