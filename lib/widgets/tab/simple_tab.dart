import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class SimpleTab extends StatelessWidget {
  const SimpleTab({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: ActiveYouTheme.textGreyColor,
          ),
        ),
      ),
    );
  }
}

