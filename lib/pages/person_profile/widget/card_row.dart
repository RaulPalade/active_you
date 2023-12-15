import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    super.key,
    required this.iconPath,
    required this.title,
  });

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
              child: SvgPicture.asset(iconPath,
                  width: 20,
                  colorFilter:
                      const ColorFilter.mode(Colors.blue, BlendMode.srcIn)),
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
              colorFilter: const ColorFilter.mode(
                  ActiveYouTheme.grayDarkColor, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}
