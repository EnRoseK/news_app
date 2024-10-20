import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_large_news_item.dart';
import 'package:news_app/components/explore_page/explore_page_news_item.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:provider/provider.dart';

class ExplorePageBody extends StatelessWidget {
  const ExplorePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Article> articles =
        Provider.of<ArticleProvider>(context, listen: true).articles;

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
          return ExplorePageLargeNewsItem(article: articles[index]);
        } else {
          return ExplorePageNewsItem(article: articles[index]);
        }
      },
      itemCount: articles.length,
    );
  }
}
