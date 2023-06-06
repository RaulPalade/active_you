import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class RoleSelectionCard extends StatefulWidget {
  const RoleSelectionCard({super.key, required this.onSwitch});

  final Function onSwitch;

  @override
  RoleSelectionCardState createState() => RoleSelectionCardState();
}

class RoleSelectionCardState extends State<RoleSelectionCard>
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
        child: TabBar(
          dividerColor: Colors.transparent,
          controller: _tabController,
          labelPadding: EdgeInsets.zero,
          onTap: (index) => setState(() {
            _tabIndex = index;
            if (_tabIndex == 0) {
              widget.onSwitch("USER");
            } else {
              widget.onSwitch("TRAINER");
            }
          }),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            gradient: _tabIndex == 0
                ? const LinearGradient(
                    colors: [
                      ActiveYouTheme.brandLightColor,
                      ActiveYouTheme.brandDarkColor
                    ],
                  )
                : const LinearGradient(
                    colors: [
                      ActiveYouTheme.secondaryDarkColor,
                      ActiveYouTheme.secondaryLightColor
                    ],
                  ),
          ),
          tabs: const [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 8),
                  Text("USER"),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_gymnastics),
                  SizedBox(width: 8),
                  Text("TRAINER"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
