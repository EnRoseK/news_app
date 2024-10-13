import 'package:flutter/material.dart';
import 'package:news_app/components/profiles_page/profile_page_menu.dart';
import 'package:news_app/components/profiles_page/profile_page_user.dart';
import 'package:news_app/components/profiles_page/profile_page_user_read_info.dart';
import 'package:news_app/utils/thememode_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24)
            .copyWith(bottom: 100),
        children: [
          const ProfilePageUser(),
          const SizedBox(height: 24),
          const ProfilePageUserReadInfo(),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            height: 1,
            color: grey2(isLightMode(context)),
          ),
          const SizedBox(height: 24),
          ProfilePageMenu(
            title: "Reading History",
            items: [
              ProfilePageMenuItem(title: "Clapped Articles", onTap: () {}),
              ProfilePageMenuItem(title: "Read Articles", onTap: () {}),
            ],
          ),
          const SizedBox(height: 16),
          ProfilePageMenu(
            title: "Settings",
            items: [
              ProfilePageMenuItem(title: "My Account", onTap: () {}),
              ProfilePageMenuItem(title: "About Us", onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
