import 'package:flutter/material.dart';
import 'package:news_app/components/common/ripple_container.dart';
import 'package:news_app/pages/main_page.dart';
import 'package:news_app/utils/thememode_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _handleOnButtonTap() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool("firstTime", false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2249D4),
              Color(0xFFE9EEFA),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 100],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AspectRatio(
                aspectRatio: 215 / 269,
                child: Image.asset(
                  "assets/images/welcome_bg.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: backgroundPrimary(isLightMode(context)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 52,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Get The Latest News And Updates",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "From Politics to Entertainment: Your One-Stop Source for Comprehensive Coverage of the Latest News and Developments Across the Glob will be right on your hand.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.normal,
                              color: textSecondary(isLightMode(context)),
                            ),
                      ),
                      const SizedBox(height: 24),
                      RippleContainer(
                        onTap: () {
                          _handleOnButtonTap();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainPage(),
                            ),
                          );
                        },
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        backgroundColor: brandBlue(isLightMode(context)),
                        splashColor:
                            textLink(isLightMode(context)).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(128),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Explore",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 37),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
