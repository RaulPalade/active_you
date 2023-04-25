import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SimpleTextFormField extends StatefulWidget {
  const SimpleTextFormField(
      {Key? key, required this.hintText, required this.icon})
      : super(key: key);

  final String hintText;
  final SvgPicture icon;

  @override
  State<SimpleTextFormField> createState() => _SimpleTextFormFieldState();
}

class _SimpleTextFormFieldState extends State<SimpleTextFormField> {
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
            decoration: InputDecoration(
              icon: widget.icon,
              iconColor: ActiveYouTheme.grayDarkColor,
              hintText: widget.hintText,
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
