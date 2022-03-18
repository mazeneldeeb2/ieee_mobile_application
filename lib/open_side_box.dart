import 'package:flutter/material.dart';

class OpenedSideBox extends StatelessWidget {
  const OpenedSideBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        width: double.infinity,
        height: 50.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(children: const [
          Icon(
            Icons.home,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            "Home",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]));
  }
}
