import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/back_button_app_bar.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "Poppins-Bold",
          fontSize: 16,
          color: ActiveYouTheme.blackColor,
        ),
      ),
      leading: IconButton(
        icon: const BackButtonAppBar(),
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
