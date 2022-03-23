import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UnopenedSideBox extends StatelessWidget {
  const UnopenedSideBox({Key? key, this.icon, this.iconColor, this.boxColor})
      : super(key: key);
  final IconData? icon;
  final Color? iconColor;
  final Color? boxColor;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      margin: const EdgeInsets.only(bottom: 30.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(14)),
        color: boxColor ?? const Color(0xFFE2D8D8),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: iconColor ?? const Color(0xFF868686),
        ),
      ),
    );
  }
}
