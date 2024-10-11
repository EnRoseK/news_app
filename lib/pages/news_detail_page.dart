import 'package:flutter/material.dart';
import 'package:news_app/components/news_detail_page/news_detail_body.dart';
import 'package:news_app/components/news_detail_page/news_detail_bottombar.dart';
import 'package:news_app/components/news_detail_page/news_detail_picture.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      bottomNavigationBar: NewsDetailBottombar(),
      body: Stack(
        children: [
          NewsDetailPicture(),
          NewsDetailBody(),
        ],
      ),
    );
  }
}
