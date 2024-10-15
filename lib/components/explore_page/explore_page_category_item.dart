import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExplorePageCategoryItem extends StatelessWidget {
  const ExplorePageCategoryItem(
      {super.key, required this.name, required this.isSelected});

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return RippleContainer(
      borderRadius: BorderRadius.circular(56),
      backgroundColor: isSelected ? brandBlue10(isLightMode(context)) : null,
      border: Border.all(
        color: brandBlue10(isLightMode(context)),
        width: 1,
        style: BorderStyle.solid,
      ),
      splashColor: brandBlue10(isLightMode(context)),
      onTap: isSelected ? null : () {},
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
      child: Text(
        name,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: textPrimary(isLightMode(context))),
      ),
    );
  }
}
