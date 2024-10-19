import 'package:flutter/material.dart';
import 'package:news_app/components/common/bottom_nav_bar.dart';
import 'package:news_app/pages/bookmarks_page.dart';
import 'package:news_app/pages/explore_page.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        setSelectedIndex: _setSelectedIndex,
      ),
    );
  }
}
