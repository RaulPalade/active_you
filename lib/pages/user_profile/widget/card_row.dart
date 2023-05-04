import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardRow extends StatelessWidget {
  const CardRow(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.onClick})
      : super(key: key);

  final String iconPath;
  final String title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          SvgPicture.asset(iconPath, width: 20),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              color: ActiveYouTheme.grayDarkColor,
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: SvgPicture.asset(
              "assets/icons/arrow-right.svg",
              color: ActiveYouTheme.grayDarkColor,
            ),
            onTap: () => onClick,
          ),
        ],
      ),
    );
  }
}
