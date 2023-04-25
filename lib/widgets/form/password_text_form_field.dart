import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({Key? key}) : super(key: key);

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        color: ActiveYouTheme.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            autofocus: true,
            obscureText: _obscureText,
            decoration: InputDecoration(
              icon: SvgPicture.asset(
                "assets/icons/password.svg",
                color: ActiveYouTheme.grayDarkColor,
              ),
              iconColor: ActiveYouTheme.grayDarkColor,
              hintText: "Password",
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: _togglePasswordVisibility,
                child: SvgPicture.asset(
                  _obscureText
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
