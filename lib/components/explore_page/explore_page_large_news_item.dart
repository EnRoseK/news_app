import 'package:flutter/material.dart';
import 'package:news_app/components/common/news_metadata.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/pages/news_detail_page.dart';
import 'package:transparent_image/transparent_image.dart';

class ExplorePageLargeNewsItem extends StatelessWidget {
  const ExplorePageLargeNewsItem({super.key, required this.article});

  final Article article;

  void _handleOnTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewsDetailPage(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _handleOnTap(context);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: double.infinity,
              height: 206,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(article.picture),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 12),
                const NewsMetadata(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
