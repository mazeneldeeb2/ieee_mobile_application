import 'package:flutter/material.dart';

class ArticleContainer extends StatelessWidget {
  const ArticleContainer(
      {Key? key,
      required this.date,
      required this.imageUrl,
      required this.title})
      : super(key: key);
  final String title;
  final String date;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5,
        child: Row(children: [
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // ignore: prefer_const_constructors
              child: Image(image: NetworkImage(imageUrl)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Color(0xFFBA0C2F),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  date,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ]),
      )
    ]);
  }
}
