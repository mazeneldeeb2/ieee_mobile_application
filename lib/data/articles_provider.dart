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
      'https://ieeeswalexsc.herokuapp.com/api/articles.json';
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
        var fetchedArticlesList = data['data'];
        List<Article> loadedArticles = [];
        for (var article in fetchedArticlesList) {
          Article fetchedArticle = Article(
            id: article["id"],
            title: article["attributes"]['author'],
            date: article["attributes"]["publishedAt"],
            imageUrl: article["attributes"]["image"],
            content: article["attributes"]["content"],
          );
          loadedArticles.add(fetchedArticle);
        }
        _articles = loadedArticles;
        _emptyArticles = false;
        notifyListeners();
      } catch (error) {
        rethrow;
      }
    }
  }
}
