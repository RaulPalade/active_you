import 'package:active_you/pages/explore_workouts/explore_workouts_page.dart';
import 'package:active_you/pages/home/home_page.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/pages/user_profile/user_profile_page.dart';
import 'package:active_you/pages/users_and_trainers/users_and_trainers_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageCoordinator extends StatefulWidget {
  const PageCoordinator({Key? key}) : super(key: key);

  @override
  State<PageCoordinator> createState() => _PageCoordinatorState();
}

class _PageCoordinatorState extends State<PageCoordinator> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    UsersAndTrainersPage(),
    ExploreWorkoutsPage(),
    MyWorkoutsPage(),
    UserProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: ActiveYouTheme.brandLightColor,
        backgroundColor: Colors.white,
        items: [
          SvgPicture.asset("assets/icons/interface/home.svg"),
          SvgPicture.asset("assets/icons/interface/3-users.svg"),
          SvgPicture.asset("assets/icons/interface/search.svg"),
          SvgPicture.asset("assets/icons/interface/document.svg"),
          SvgPicture.asset("assets/icons/profile.svg"),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
