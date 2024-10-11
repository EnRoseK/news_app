import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/components/news_detail_page/news_detail_icon_button.dart';
import 'package:news_app/utils/thememode_color.dart';

class NewsDetailBottombar extends StatelessWidget {
  const NewsDetailBottombar({super.key});

  void _handleBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          color: isLightMode
              ? const Color(0xFFF3EBE9).withOpacity(0.6)
              : const Color(0xFF1C1C1C).withOpacity(0.8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewsDetailIconButton(
                icon: Icons.arrow_back,
                onTap: () {
                  _handleBack(context);
                },
              ),
              const Spacer(),
              Row(
                children: [
                  Row(
                    children: [
                      NewsDetailIconButton(
                        icon: Icons.back_hand_outlined,
                        onTap: () {},
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "1",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: textSecondary(isLightMode)),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  NewsDetailIconButton(
                    icon: Icons.bookmark_outline,
                    onTap: () {},
                  ),
                  const SizedBox(width: 16),
                  NewsDetailIconButton(
                    icon: Icons.share_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
