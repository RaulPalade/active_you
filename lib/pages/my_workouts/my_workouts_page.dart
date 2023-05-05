import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWorkoutsPage extends ConsumerStatefulWidget {
  const MyWorkoutsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MyWorkoutsPage> createState() => _MyWorkoutsPageState();
}

class _MyWorkoutsPageState extends ConsumerState<MyWorkoutsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "My Workouts"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "My Workouts",
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
