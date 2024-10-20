import 'package:flutter/material.dart';
import 'package:news_app/components/common/news_metadata.dart';
import 'package:news_app/models/article.dart';
import 'package:news_app/utils/thememode_color.dart';

class NewsDetailBody extends StatelessWidget {
  const NewsDetailBody({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 269,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24)
              .copyWith(bottom: 0),
          color: backgroundPrimary(isLightMode(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.name,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              const NewsMetadata(),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 75),
                  child: Text(
                    article.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
