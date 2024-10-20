import 'package:flutter/material.dart';

class NewsDetailPicture extends StatelessWidget {
  const NewsDetailPicture({super.key, required this.picureUrl});

  final String picureUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AspectRatio(
        aspectRatio: 215 / 158,
        child: Image.network(
          picureUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
