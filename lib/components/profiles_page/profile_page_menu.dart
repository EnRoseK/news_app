import 'package:flutter/material.dart';
import 'package:news_app/utils/thememode_color.dart';

class ProfilePageMenu extends StatelessWidget {
  const ProfilePageMenu(
      {super.key, required this.title, this.items = const []});

  final String title;
  final List<ProfilePageMenuItem>? items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        ...items!.map((item) {
          return _item(context, title: item.title, onTap: item.onTap);
        })
      ],
    );
  }

  Material _item(BuildContext context,
      {required String title, required void Function() onTap}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: textPrimary(isLightMode(context))),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                size: 20,
                color: textPrimary(isLightMode(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePageMenuItem {
  const ProfilePageMenuItem({required this.title, required this.onTap});

  final String title;
  final void Function() onTap;
}
