import 'package:flutter/material.dart';
import 'package:news_app/pages/news_detail_page.dart';
import 'package:news_app/utils/constants/colors.dart';

class HomeNewsListItem extends StatelessWidget {
  const HomeNewsListItem({super.key});

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
      child: SizedBox(
        width: 269,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: AppColors.textPlaceholderLight,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience the Serenity of Japan's Traditional Countryside",
                    style: Theme.of(context).textTheme.headlineLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Technology',
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
