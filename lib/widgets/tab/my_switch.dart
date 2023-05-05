import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/tab/simple_tab.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch(
      {Key? key,
      required this.firstOption,
      required this.secondOption,
      required this.onSwitch})
      : super(key: key);

  final String firstOption;
  final String secondOption;
  final Function onSwitch;

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        color: ActiveYouTheme.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: TabBar(
          dividerColor: Colors.transparent,
          controller: _tabController,
          labelPadding: EdgeInsets.zero,
          splashBorderRadius: BorderRadius.circular(100),
          onTap: (index) => setState(() {
            widget.onSwitch(index);
            _tabIndex = index;
          }),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: _tabIndex == 0
                ? const LinearGradient(
                    colors: [
                      ActiveYouTheme.brandLightColor,
                      ActiveYouTheme.brandDarkColor
                    ],
                  )
                : const LinearGradient(
                    colors: [
                      ActiveYouTheme.brandDarkColor,
                      ActiveYouTheme.brandLightColor
                    ],
                  ),
          ),
          tabs: [
            SimpleTab(
              title: widget.firstOption,
              isActive: _tabIndex == 0,
            ),
            SimpleTab(
              title: widget.secondOption,
              isActive: _tabIndex == 1,
            ),
          ],
        ),
      ),
    );
  }
}
