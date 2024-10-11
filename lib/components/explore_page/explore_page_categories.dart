import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_category_item.dart';

class ExplorePageCategories extends StatelessWidget {
  const ExplorePageCategories({super.key});

  final List<int> data = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ExplorePageCategoryItem(
          name: "Travel",
          key: ValueKey(data[index]),
          isSelected: index == 0,
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 12,
          key: ValueKey(index),
        ),
        itemCount: data.length,
      ),
    );
  }
}
