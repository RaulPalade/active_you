import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersAndTrainersPage extends ConsumerStatefulWidget {
  const UsersAndTrainersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UsersAndTrainersPage> createState() => _UsersAndTrainersState();
}

class _UsersAndTrainersState extends ConsumerState<UsersAndTrainersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Users and Trainers"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Users and Trainers",
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
