import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class NewsDetailPicture extends StatelessWidget {
  const NewsDetailPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AspectRatio(
        aspectRatio: 215 / 158,
        child: Container(
          color: AppColors.textPlaceholderLight,
        ),
      ),
    );
  }
}
