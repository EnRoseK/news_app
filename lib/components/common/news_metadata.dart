import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';
import 'package:news_app/utils/constants/colors.dart';

class NewsMetadata extends StatelessWidget {
  const NewsMetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: AppColors.textPlaceholderLight,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Harry Harper · Apr 12, 2023",
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: textSecondary(isLightMode)),
        ),
      ],
    );
  }
}
