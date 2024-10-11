import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExplorePageCategoryItem extends StatelessWidget {
  const ExplorePageCategoryItem(
      {super.key, required this.name, required this.isSelected});

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(56),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(56),
          color: isSelected ? brandBlue10(isLightMode) : Colors.transparent,
          border: Border.all(
            color: brandBlue10(isLightMode),
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: brandBlue10(isLightMode),
            highlightColor: brandBlue10(isLightMode),
            onTap: isSelected ? null : () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 6,
              ),
              child: Text(
                name,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: textPrimary(isLightMode)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
