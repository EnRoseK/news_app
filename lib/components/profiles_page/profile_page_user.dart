import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class ProfilePageUser extends StatelessWidget {
  const ProfilePageUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(120),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: textPlaceholder(isLightMode(context)),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Dianne Russell",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 4),
              Text(
                "Bookworm",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: blue5(isLightMode(context)),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
