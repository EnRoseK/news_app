import 'package:flutter/material.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/services/category_service.dart';

class CategoryProvider extends ChangeNotifier {
  late List<Category> categories;
  bool loading = false;
  bool error = false;
  final CategoryService categoryService = CategoryService();

  void getCategories() async {
    loading = true;
    notifyListeners();

    try {
      categories = await categoryService.getCategories();
    } catch (e) {
      error = true;
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
