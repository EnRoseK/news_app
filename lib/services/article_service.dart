import 'dart:convert';

import 'package:news_app/models/article.dart';
import 'package:http/http.dart' as http;

class ArticleService {
  Future<List<Article>> getArticles() async {
    late List<Article> articles;

    final response = await http.get(Uri.parse("http://localhost:9090/article"));
    if (response.statusCode != 200) {
      throw Exception();
    }

    List<dynamic> jsonList = jsonDecode(response.body);

    articles = jsonList.map((item) {
      return Article.fromJson(item);
    }).toList();

    return articles;
  }
}
