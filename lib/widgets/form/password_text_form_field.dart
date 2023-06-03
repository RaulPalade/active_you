import 'package:active_you/pages/auth/login/login_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextFormField extends ConsumerWidget {
  const PasswordTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool passwordHidden = ref.watch(loginPasswordHiddenProvider);

    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        color: ActiveYouTheme.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            onChanged: (password) =>
                {ref.read(loginPageProvider.notifier).setPassword(password)},
            autofocus: true,
            obscureText: !passwordHidden,
            decoration: InputDecoration(
              icon: SvgPicture.asset(
                "assets/icons/password.svg",
                color: ActiveYouTheme.grayDarkColor,
              ),
              iconColor: ActiveYouTheme.grayDarkColor,
              hintText: "Password",
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: () =>
                    ref.read(loginPageProvider.notifier).setHiddenPassword(),
                child: SvgPicture.asset(
                  passwordHidden
                      ? "assets/icons/show-password.svg"
                      : "assets/icons/hide-password.svg",
                ),
              ),
              suffixIconConstraints: const BoxConstraints(
                maxWidth: 24,
              ),
              suffixIconColor: ActiveYouTheme.grayMediumColor,
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
