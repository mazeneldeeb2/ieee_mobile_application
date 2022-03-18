import 'package:flutter/material.dart';

class OpenedSideBox extends StatelessWidget {
  const OpenedSideBox({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        width: double.infinity,
        height: 50.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            "$title",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]));
  }
}
