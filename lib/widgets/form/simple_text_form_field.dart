import 'package:active_you/pages/auth/login/login_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class SimpleTextFormField extends ConsumerWidget {
  const SimpleTextFormField(
      {Key? key, required this.hintText, required this.icon})
      : super(key: key);

  final String hintText;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        color: ActiveYouTheme.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            onChanged: (email) =>
                {ref.read(loginPageProvider.notifier).setEmail(email)},
            autofocus: true,
            decoration: InputDecoration(
              icon: icon,
              iconColor: ActiveYouTheme.grayDarkColor,
              hintText: hintText,
              border: InputBorder.none,
            ),
            style: const TextStyle(
              fontFamily: "Poppins-Light",
              fontSize: 18,
              color: ActiveYouTheme.grayMediumColor,
            ),
          ),
        ),
      ),
    );
  }
}
