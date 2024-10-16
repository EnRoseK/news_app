import 'package:flutter/material.dart';
import 'package:news_app/components/bookmarks_page/bookmarks_news_item.dart';
import 'package:news_app/components/common/ripple_container.dart';
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
            child: RippleContainer(
              onTap: _isEditing ? _handleDisableEdit : _handleEnableEdit,
              padding: _isEditing
                  ? const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    )
                  : const EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(128),
              splashColor: _isEditing
                  ? brandBlue(isLightMode(context)).withOpacity(0.1)
                  : null,
              child: _isEditing
                  ? Text(
                      "Done",
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: brandBlue(isLightMode(context))),
                    )
                  : Icon(
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
