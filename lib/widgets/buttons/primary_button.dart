import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.title, required this.onClick})
      : super(key: key);
  final String title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              MaterialStateProperty.all(ActiveYouTheme.whiteColor),
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size.fromHeight(60)),
        ),
        child: Text(title),
        onPressed: () => onClick(),
      ),
    );
  }
}
