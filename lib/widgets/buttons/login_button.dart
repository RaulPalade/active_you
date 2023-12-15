import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.onClick});
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            gradient: const LinearGradient(
              colors: [
                ActiveYouTheme.brandLightColor,
                ActiveYouTheme.brandDarkColor
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: ActiveYouTheme.shadowColorBlue.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(ActiveYouTheme.whiteColor),
            textStyle: MaterialStateProperty.all<TextStyle>(
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            minimumSize: MaterialStateProperty.all(const Size.fromHeight(60)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/login.svg"),
              const SizedBox(
                width: 4,
              ),
              const Text("Login"),
            ],
          ),
          onPressed: () => onClick(),
        ),
      ),
    );
  }
}
