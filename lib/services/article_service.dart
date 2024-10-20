import 'dart:convert';

import 'package:news_app/models/article.dart';
import 'package:http/http.dart' as http;

class ArticleService {
  Future<List<Article>> getArticles({String? categoryId}) async {
    late List<Article> articles;
    const String url = "http://localhost:9090/article";
    final Map<String, String> queryParams = {};
    if (categoryId != null) {
      queryParams["categoryId"] = categoryId;
    }

    final response =
        await http.get(Uri.parse(url).replace(queryParameters: queryParams));
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
