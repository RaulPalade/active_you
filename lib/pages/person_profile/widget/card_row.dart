import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    Shader linearGradient = const LinearGradient(
      colors: [ActiveYouTheme.brandLightColor, ActiveYouTheme.brandDarkColor],
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          ShaderMask(
            child: SizedBox(
              child: SvgPicture.asset(iconPath, width: 20, color: Colors.blue),
            ),
            shaderCallback: (Rect bounds) {
              return linearGradient;
            },
          ),
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
          ),
        ],
      ),
    );
  }
}
