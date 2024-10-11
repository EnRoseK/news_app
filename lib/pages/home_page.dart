import 'package:flutter/material.dart';
import 'package:news_app/components/home_page/home_appbar_actions.dart';
import 'package:news_app/components/home_page/home_appbar_title.dart';
import 'package:news_app/components/home_page/home_news_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<int> data = const [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const HomeAppbarTitle(),
        titleSpacing: 32,
        centerTitle: false,
        actions: const [
          HomeAppbarActions(),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.only(top: 24, bottom: 100),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => HomeNewsList(
            key: ValueKey(data[index]),
          ),
          separatorBuilder: (context, index) =>
              SizedBox(key: ValueKey(index), height: 16),
          itemCount: data.length,
        ),
      ),
    );
  }
}
