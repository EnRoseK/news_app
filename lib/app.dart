import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:news_app/pages/main_page.dart';
import 'package:news_app/pages/welcome_page.dart';
import 'package:news_app/providers/article_provider.dart';
import 'package:news_app/providers/category_provider.dart';
import 'package:news_app/utils/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _firstTime = true;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    final prefs = await SharedPreferences.getInstance();
    bool? firstTime = prefs.getBool("firstTime");
    if (mounted) {
      setState(() {
        _firstTime = firstTime ?? true;
      });

      Provider.of<CategoryProvider>(context, listen: false).getCategories();
      Provider.of<ArticleProvider>(context, listen: false).getArticles();

      FlutterNativeSplash.remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: _firstTime ? const WelcomePage() : const MainPage(),
    );
  }
}
