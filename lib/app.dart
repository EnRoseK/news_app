import 'package:flutter/material.dart';
import 'package:news_app/pages/welcome_page.dart';
import 'package:news_app/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
    );
  }
}
