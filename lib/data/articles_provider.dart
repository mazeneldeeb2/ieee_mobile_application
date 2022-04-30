import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'article.dart';

class ArticlesProvider with ChangeNotifier {
  bool _emptyArticles = true;
  bool get emptyArticles {
    return _emptyArticles;
  }

  static const String articlesApi =
      'https://ieeeswalexsc.herokuapp.com/api/articles';
  final url = Uri.parse(articlesApi);
  List<Article> _articles = [];

  List<Article> get articles {
    return _articles;
  }

  Article findArticleById(int id) {
    return _articles.firstWhere((element) => element.id == id);
  }

  Future<void> fetchArticles() async {
    http.Response response;
    Map<String, dynamic> data;
    try {
      response = await http.get(url).timeout(const Duration(seconds: 3));
    } catch (error) {
      rethrow;
    }
    if (json.decode(response.body) != null) {
      try {
        data = json.decode(response.body) as Map<String, dynamic>;
        var fetchedData = data['data'];
        List<Article> fetchedArticles = [];
        for (var article in fetchedData) {
          Article fetchedArticle = Article(
            id: article['id'],
            title: article["attributes"]['author'],
            date: article["attributes"]["publishedAt"],
            imageUrl: article["attributes"]['image'],
            content: article["attributes"]['content'],
          );
          fetchedArticles.add(fetchedArticle);
        }
        _articles = fetchedArticles;
        _emptyArticles = false;

        notifyListeners();
      } catch (error) {
        rethrow;
      }
    }
  }
}
