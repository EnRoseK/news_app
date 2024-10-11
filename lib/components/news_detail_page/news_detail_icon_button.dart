import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class NewsDetailIconButton extends StatelessWidget {
  const NewsDetailIconButton(
      {super.key, required this.onTap, required this.icon});

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 24,
        color: textPrimary(isLightMode),
      ),
    );
  }
}
