import 'package:flutter/material.dart';

import '../data/article.dart';
import 'article_container.dart';

class ArticleListView extends StatelessWidget {
  ArticleListView({Key? key, this.count}) : super(key: key);
  final int? count;
  List<Article> articles = [
    const Article("title", "1/1/2011",
        'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg'),
    const Article("title", "1/1/2011",
        'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg'),
    const Article("title", "1/1/2011",
        'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg'),
    const Article("title", "1/1/2011",
        'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg'),
    const Article("title", "1/1/2011",
        'https://sscsalex.org/static/0d35d923e6ed1f15aa24de4f36c4818a/f211f/5eb8b1b08f25030017183661.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: articles.length,
      itemBuilder: (context, index) => ArticleContainer(
        title: articles[index].title,
        imageUrl: articles[index].imageUrl,
        date: articles[index].date,
      ),
      separatorBuilder: (context, index) => Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.grey[300],
      ),
    );
  }
}
