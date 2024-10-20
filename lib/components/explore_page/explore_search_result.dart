import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_categories.dart';
import 'package:news_app/components/explore_page/explore_page_news_item.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExploreSearchResult extends StatelessWidget {
  const ExploreSearchResult({super.key});

  final List<int> data = const [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundPrimary(
          isLightMode(context),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Search Results",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        centerTitle: true,
        leadingWidth: 80,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Icon(
              Icons.arrow_back,
              size: 24,
              color: textPrimary(isLightMode(context)),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          children: [
            const ExplorePageCategories(),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 32)
                    .copyWith(bottom: 32),
                // itemBuilder: (context, index) => ExplorePageNewsItem(
                //   key: ValueKey(data[index]),

                // ),
                itemBuilder: (context, index) => SizedBox(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 24,
                  key: ValueKey(index),
                ),
                itemCount: data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
