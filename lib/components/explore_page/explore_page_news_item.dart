import 'package:flutter/material.dart';
import 'package:news_app/components/common/news_metadata.dart';
import 'package:news_app/pages/news_detail_page.dart';
import 'package:news_app/utils/constants/colors.dart';

class ExplorePageNewsItem extends StatelessWidget {
  const ExplorePageNewsItem({super.key});

  void _handleOnTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NewsDetailPage(),
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
                  "Experience the Serenity of Japan's Traditional Countryside",
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
            child: Container(
              width: 112,
              height: 80,
              decoration: const BoxDecoration(
                color: AppColors.textPlaceholderLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
