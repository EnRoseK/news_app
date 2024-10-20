import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_category_item.dart';
import 'package:news_app/models/category.dart';
import 'package:news_app/providers/category_provider.dart';
import 'package:provider/provider.dart';

class ExplorePageCategories extends StatelessWidget {
  const ExplorePageCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category(
          id: "-1",
          name: "All",
          articleCount: 0,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now()),
      ...Provider.of<CategoryProvider>(context, listen: true).categories
    ];

    return SizedBox(
      height: 34,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ExplorePageCategoryItem(
          name: categories[index].name,
          key: ValueKey(categories[index]),
          isSelected: index == 0,
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 12,
          key: ValueKey(index),
        ),
        itemCount: categories.length,
      ),
    );
  }
}
