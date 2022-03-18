import 'package:flutter/material.dart';

class UnOpenedSideBox extends StatelessWidget {
  const UnOpenedSideBox(
    this.icon, {
    Key? key,
    this.color,
  }) : super(key: key);
  final IconData? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: 50.0,
      height: 50.0,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Icon(
        icon,
        color: color ?? Colors.black,
      ),
    );
  }
}
