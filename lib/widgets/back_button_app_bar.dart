import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackButtonAppBar extends StatelessWidget {
  const BackButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ActiveYouTheme.cardColor,
      child: Center(
        child: SvgPicture.asset("assets/icons/interface/arrow-left.svg"),
      ),
    );
  }
}
