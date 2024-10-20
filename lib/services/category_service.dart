import 'dart:convert';

import 'package:news_app/models/category.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Future<List<Category>> getCategories() async {
    late List<Category> categories;

    final response =
        await http.get(Uri.parse("http://localhost:9090/category"));
    if (response.statusCode != 200) {
      throw Exception();
    }

    List<dynamic> jsonList = jsonDecode(response.body);

    categories = jsonList.map((item) {
      return Category.fromJson(item);
    }).toList();

    return categories;
  }
}
