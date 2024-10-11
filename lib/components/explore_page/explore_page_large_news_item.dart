import 'package:flutter/material.dart';
import 'package:news_app/components/common/news_metadata.dart';
import 'package:news_app/pages/news_detail_page.dart';
import 'package:news_app/utils/constants/colors.dart';

class ExplorePageLargeNewsItem extends StatelessWidget {
  const ExplorePageLargeNewsItem({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: double.infinity,
              height: 206,
              decoration: const BoxDecoration(
                color: AppColors.textPlaceholderLight,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Uncovering the Hidden Gems of the Amazon Forest",
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
