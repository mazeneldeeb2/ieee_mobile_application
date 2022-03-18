import 'package:flutter/material.dart';

class UnOpenedSideBox extends StatelessWidget {
  const UnOpenedSideBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: const Icon(
        Icons.home,
        color: Colors.black,
      ),
    );
  }
}
