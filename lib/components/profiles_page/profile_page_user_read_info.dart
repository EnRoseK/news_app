import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class ProfilePageUserReadInfo extends StatelessWidget {
  const ProfilePageUserReadInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        _item(context, title: "Article Read", text: "320"),
        _item(context, title: "Streak", text: "345 Days"),
        _item(context, title: "Level", text: "125"),
      ],
    );
  }

  Column _item(BuildContext context,
      {required String title, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: grey5(isLightMode(context))),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ],
    );
  }
}
