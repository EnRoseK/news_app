import 'package:flutter/material.dart';
import 'package:news_app/components/common/news_metadata.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/pages/news_detail_page.dart';
import 'package:transparent_image/transparent_image.dart';

class ExplorePageNewsItem extends StatelessWidget {
  const ExplorePageNewsItem({super.key, required this.article});

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
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 4),
                const NewsMetadata(),
              ],
            ),
          ),
          const SizedBox(width: 16),
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
            child: SizedBox(
              width: 112,
              height: 80,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(article.picture),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
