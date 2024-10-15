import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/utils/thememode_color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.setSelectedIndex,
  });

  final int selectedIndex;
  final void Function(int index) setSelectedIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 16,
          ),
          color: isLightMode(context)
              ? const Color(0xFFFCE9EE).withOpacity(0.8)
              : const Color(0xFF1C1C1C).withOpacity(0.8),
          child: GNav(
            textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: backgroundPrimary(isLightMode(context)),
                ),
            gap: 7,
            backgroundColor: Colors.transparent,
            iconSize: 24,
            color: textPrimary(isLightMode(context)),
            activeColor: backgroundPrimary(isLightMode(context)),
            tabBackgroundColor: textPrimary(isLightMode(context)),
            rippleColor: backgroundPrimary(!isLightMode(context)),
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(16),
            tabBorderRadius: 24,
            selectedIndex: selectedIndex,
            onTabChange: (value) => setSelectedIndex(value),
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: Icons.explore_outlined,
                text: "Explore",
              ),
              GButton(
                icon: Icons.bookmarks_outlined,
                text: "Bookmarks",
              ),
              GButton(
                icon: Icons.person_outline,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
