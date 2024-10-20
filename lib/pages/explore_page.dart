import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/components/explore_page/explore_page_body.dart';
import 'package:news_app/components/explore_page/explore_page_categories.dart';
import 'package:news_app/components/explore_page/explore_search.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:news_app/providers/category_provider.dart';
import 'package:provider/provider.dart';
import 'package:news_app/utils/thememode_color.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  void _handleSearchTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExploreSearch(),
      ),
    );
  }

  void _handleRefresh(BuildContext context) {
    Provider.of<CategoryProvider>(context, listen: false).getCategories();
    Provider.of<ArticleProvider>(context, listen: false).getArticles();
  }

  @override
  Widget build(BuildContext context) {
    final bool categoryLoading =
        Provider.of<CategoryProvider>(context, listen: true).loading;
    final bool articleLoading =
        Provider.of<ArticleProvider>(context, listen: true).loading;
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
        onRefresh: () async {
          _handleRefresh(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Skeletonizer(
            enabled: categoryLoading && articleLoading,
            child: const Column(
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
      ),
    );
  }
}
