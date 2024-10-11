import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_page_body.dart';
import 'package:news_app/components/explore_page/explore_page_categories.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        title: Text(
          "Explore",
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
                Icons.search,
                size: 24,
                color: textPrimary(isLightMode),
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: const Padding(
          padding: EdgeInsets.only(
            top: 16,
          ),
          child: Column(
            children: [
              ExplorePageCategories(),
              SizedBox(height: 24),
              Expanded(
                child: ExplorePageBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
