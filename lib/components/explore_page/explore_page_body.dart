import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_large_news_item.dart';
import 'package:news_app/components/explore_page/explore_page_news_item.dart';

class ExplorePageBody extends StatelessWidget {
  const ExplorePageBody({super.key});

  final List<int> data = const [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 32).copyWith(
        bottom: 100,
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 24,
        key: ValueKey(index),
      ),
      itemBuilder: (context, index) {
        if (index == 0) {
          return const ExplorePageLargeNewsItem();
        } else {
          return const ExplorePageNewsItem();
        }
      },
      itemCount: data.length,
    );
  }
}
