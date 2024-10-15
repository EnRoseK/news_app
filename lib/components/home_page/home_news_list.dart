import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/components/home_page/home_news_list_item.dart';
import 'package:news_app/utils/thememode_color.dart';

class HomeNewsList extends StatelessWidget {
  const HomeNewsList({super.key});

  final List<int> data = const [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _header(context),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  HomeNewsListItem(key: ValueKey(data[index])),
              separatorBuilder: (context, index) =>
                  SizedBox(width: 24, key: ValueKey(index)),
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }

  Padding _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Just For You",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          RippleContainer(
            borderRadius: BorderRadius.circular(24),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12,
            ),
            splashColor: brandBlue(isLightMode(context)).withOpacity(0.1),
            child: Text(
              "See More",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: brandBlue(isLightMode(context)),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
