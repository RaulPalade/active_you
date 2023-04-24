import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.logo}) : super(key: key);
  final SvgPicture logo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ActiveYouTheme.grayLightColor, //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 0,
        color: Colors.white,
        child: Center(child: logo),
      ),
    );
  }
}
