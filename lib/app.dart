import 'package:flutter/material.dart';
import 'package:news_app/components/common/bottom_nav_bar.dart';
import 'package:news_app/pages/bookmarks_page.dart';
import 'package:news_app/pages/explore_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/profile_page.dart';
import 'package:news_app/utils/theme/app_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const ExplorePage(),
    const BookmarksPage(),
    const ProfilePage(),
  ];

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        extendBody: true,
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          setSelectedIndex: _setSelectedIndex,
        ),
      ),
    );
  }
}
