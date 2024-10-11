import 'package:flutter/material.dart';

class HomeAppbarActions extends StatelessWidget {
  const HomeAppbarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "☀️",
            style: TextStyle(
              fontSize: 32,
              height: 26 / 32,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "Sunny 32C",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
