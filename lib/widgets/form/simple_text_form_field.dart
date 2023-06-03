import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SimpleTextFormField extends StatelessWidget {
  const SimpleTextFormField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.onChaged})
      : super(key: key);

  final String hintText;
  final SvgPicture icon;
  final Function onChaged;

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
            onChanged: (value) => onChaged(value),
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
