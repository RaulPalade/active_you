import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton(
      {super.key,
      required this.title,
      required this.textColor,
      required this.underline,
      required this.onClick});

  final String title;
  final Color textColor;
  final bool underline;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: () => onClick(),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Poppins-Light",
          fontSize: 14,
          color: textColor,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none,
        ),
      ),
    );
  }
}
