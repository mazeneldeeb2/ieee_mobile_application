import 'package:flutter/material.dart';

import 'article_container.dart';

class ArticleListView extends StatelessWidget {
  const ArticleListView({Key? key, this.count}) : super(key: key);
  final int? count;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: count ?? 10,
      itemBuilder: (context, index) => const ArticleContainer(),
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.grey[300],
      ),
    );
  }
}
