import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/components/explore_page/explore_page_body.dart';
import 'package:news_app/components/explore_page/explore_page_categories.dart';
import 'package:news_app/components/explore_page/explore_search.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  void _handleSearchTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExploreSearch(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
            child: RippleContainer(
              onTap: () => _handleSearchTap(context),
              borderRadius: BorderRadius.circular(999),
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.search,
                size: 24,
                color: textPrimary(isLightMode(context)),
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
