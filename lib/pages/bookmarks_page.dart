import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        title: Text(
          "Bookmarks",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        centerTitle: false,
        titleSpacing: 32,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit_outlined,
                size: 24,
                color: textPrimary(isLightMode),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
