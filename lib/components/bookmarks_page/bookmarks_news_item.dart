import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class BookmarksNewsItem extends StatelessWidget {
  const BookmarksNewsItem({super.key, required this.isEditing});

  final bool isEditing;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How to Setup Your Worksapce",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 4),
              Text(
                "Interior",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: textSecondary(isLightMode(context)),
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 112,
            height: 80,
            decoration: BoxDecoration(
              color: textPlaceholder(isLightMode(context)),
            ),
          ),
        ),
        if (isEditing) const SizedBox(width: 16),
        if (isEditing)
          IconButton(
            padding: const EdgeInsets.all(14),
            onPressed: () {},
            icon: Icon(
              Icons.bookmark,
              size: 24,
              color: textSecondary(isLightMode(context)),
            ),
          ),
      ],
    );
  }
}
