import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.onClick})
      : super(key: key);

  final String title;
  final Color textColor;
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
          fontFamily: "Poppins-Medium",
          fontSize: 14,
          color: textColor,
        ),
      ),
    );
  }
}
