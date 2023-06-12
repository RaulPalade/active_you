import 'package:active_you/pages/explore_workouts/explore_workouts_page.dart';
import 'package:active_you/pages/home/home_page.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/pages/person_profile/person_profile_page.dart';
import 'package:active_you/pages/users_and_trainers/persons_and_trainers_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageCoordinator extends ConsumerStatefulWidget {
  const PageCoordinator({Key? key}) : super(key: key);

  @override
  ConsumerState<PageCoordinator> createState() => _PageCoordinatorState();
}

class _PageCoordinatorState extends ConsumerState<PageCoordinator> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const PersonsAndTrainersPage(),
    const ExploreWorkoutsPage(),
    const MyWorkoutsPage(),
    const PersonProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      ref.read(personsAndTrainersPageProvider.notifier).fetchPersons();
    }
    if (index == 2) {
      ref.read(exploreWorkoutsPageProvider.notifier).fetchWorkouts();
    }
    if (index == 0 || index == 3) {
      ref.read(myWorkoutsPageProvider.notifier).fetchMyWorkouts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CurvedNavigationBar(
          color: ActiveYouTheme.brandDarkColor,
          backgroundColor: Colors.transparent,
          items: [
            SvgPicture.asset("assets/icons/interface/home.svg"),
            SvgPicture.asset("assets/icons/interface/3-users.svg"),
            SvgPicture.asset("assets/icons/interface/search.svg"),
            SvgPicture.asset("assets/icons/interface/document.svg"),
            SvgPicture.asset("assets/icons/profile.svg"),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
