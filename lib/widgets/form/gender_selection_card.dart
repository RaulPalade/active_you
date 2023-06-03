import 'package:active_you/theme/active_you_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class GenderSelectionCard extends StatefulWidget {
  const GenderSelectionCard({super.key, required this.onSwitch});

  final Function onSwitch;

  @override
  GenderSelectionCardState createState() => GenderSelectionCardState();
}

class GenderSelectionCardState extends State<GenderSelectionCard>
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
              widget.onSwitch("Male");
            } else {
              widget.onSwitch("Female");
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
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.male),
                  const SizedBox(width: 8),
                  Text("registrationInfo.genderMale".tr()),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.female),
                  const SizedBox(width: 8),
                  Text('registrationInfo.genderFemale'.tr()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
