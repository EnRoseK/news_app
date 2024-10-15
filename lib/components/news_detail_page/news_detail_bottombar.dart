import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/utils/thememode_color.dart';

class NewsDetailBottombar extends StatelessWidget {
  const NewsDetailBottombar({super.key});

  void _handleBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
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
          color: isLightMode(context)
              ? const Color(0xFFF3EBE9).withOpacity(0.6)
              : const Color(0xFF1C1C1C).withOpacity(0.8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RippleContainer(
                onTap: () => _handleBack(context),
                padding: const EdgeInsets.all(8),
                borderRadius: BorderRadius.circular(999),
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: textPrimary(isLightMode(context)),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  RippleContainer(
                    onTap: () {},
                    padding: const EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(999),
                    child: Row(
                      children: [
                        Icon(
                          Icons.back_hand_outlined,
                          size: 24,
                          color: textPrimary(isLightMode(context)),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "1",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: textSecondary(isLightMode(context))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  RippleContainer(
                    onTap: () {},
                    padding: const EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(999),
                    child: Icon(
                      Icons.bookmark_outline,
                      size: 24,
                      color: textPrimary(isLightMode(context)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RippleContainer(
                    onTap: () {},
                    padding: const EdgeInsets.all(8),
                    borderRadius: BorderRadius.circular(999),
                    child: Icon(
                      Icons.share_outlined,
                      size: 24,
                      color: textPrimary(isLightMode(context)),
                    ),
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
