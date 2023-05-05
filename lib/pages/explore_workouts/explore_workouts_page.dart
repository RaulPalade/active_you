import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExploreWorkoutsPage extends ConsumerStatefulWidget {
  const ExploreWorkoutsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ExploreWorkoutsPage> createState() => _ExploreWorkoutsState();
}

class _ExploreWorkoutsState extends ConsumerState<ExploreWorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Explore Workouts"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Explore Workouts",
              style: TextStyle(
                fontFamily: "Poppins-Bold",
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
