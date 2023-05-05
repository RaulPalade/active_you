import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key, required this.followStatus}) : super(key: key);
  final List<String> followStatus;

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  int _index = 0;

  void _changeUnitMeasure() {
    setState(() {
      _index = (_index + 1) % widget.followStatus.length;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeUnitMeasure,
      child: SizedBox(
        width: 90,
        height: 55,
        child: Card(
          elevation: 0,
          color: ActiveYouTheme.cardColor,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                ActiveYouTheme.secondaryLightColor,
                ActiveYouTheme.secondaryDarkColor,
              ]),
            ),
            child: Center(
              child: Text(
                widget.followStatus[_index],
                style: const TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: 12,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
