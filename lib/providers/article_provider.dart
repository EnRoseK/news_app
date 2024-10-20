import 'package:flutter/material.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/services/article_service.dart';

class ArticleProvider extends ChangeNotifier {
  late List<Article> articles;
  bool loading = false;
  bool error = false;
  final ArticleService articleService = ArticleService();

  void getArticles() async {
    loading = true;
    notifyListeners();

    try {
      articles = await articleService.getArticles();
    } catch (e) {
      error = true;
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
