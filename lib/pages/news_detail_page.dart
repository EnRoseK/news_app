import 'package:flutter/material.dart';
import 'package:news_app/components/news_detail_page/news_detail_body.dart';
import 'package:news_app/components/news_detail_page/news_detail_bottombar.dart';
import 'package:news_app/components/news_detail_page/news_detail_picture.dart';
import 'package:news_app/models/article.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const NewsDetailBottombar(),
      body: Stack(
        children: [
          NewsDetailPicture(picureUrl: article.picture),
          NewsDetailBody(article: article),
        ],
      ),
    );
  }
}
