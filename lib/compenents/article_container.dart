import 'package:flutter/material.dart';

class ArticleContainer extends StatelessWidget {
  const ArticleContainer({Key? key, this.date, this.title, this.imageUrl})
      : super(key: key);
  final String? title;
  final String? date;
  final String? imageUrl;

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
              child: Image(
                  image: const NetworkImage(
                      'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg')),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "Title",
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(date ?? "1/1/2011")
              ],
            ),
          )
        ]),
      )
    ]);
  }
}
