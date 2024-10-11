import 'package:flutter/material.dart';

class HomeAppbarTitle extends StatelessWidget {
  const HomeAppbarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Good Morning,\nTrung",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "Sun 9 April, 2023",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
