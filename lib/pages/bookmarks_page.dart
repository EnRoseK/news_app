import 'package:flutter/material.dart';
import 'package:news_app/components/bookmarks_page/bookmarks_news_item.dart';
import 'package:news_app/utils/thememode_color.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  final List<int> data = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  bool _isEditing = false;

  void _handleEnableEdit() {
    setState(() {
      _isEditing = true;
    });
  }

  void _handleDisableEdit() {
    setState(() {
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
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
            child: _isEditing
                ? TextButton(
                    onPressed: _handleDisableEdit,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      overlayColor: brandBlue(isLightMode(context)),
                    ),
                    child: Text(
                      "Done",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: brandBlue(isLightMode(context))),
                    ),
                  )
                : IconButton(
                    onPressed: _handleEnableEdit,
                    icon: Icon(
                      Icons.edit_outlined,
                      size: 24,
                      color: textPrimary(isLightMode(context)),
                    ),
                  ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24)
            .copyWith(bottom: 100),
        itemBuilder: (context, index) => BookmarksNewsItem(
          key: ValueKey(data[index]),
          isEditing: _isEditing,
        ),
        separatorBuilder: (context, index) =>
            SizedBox(height: 24, key: ValueKey(index)),
        itemCount: data.length,
      ),
    );
  }
}
