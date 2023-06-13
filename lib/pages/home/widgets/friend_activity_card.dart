import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/pages/my_goals/widgets/goal_list_item.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class FriendActivityCard extends StatelessWidget {
  const FriendActivityCard({super.key, required this.friend});

  final Person friend;

  @override
  Widget build(BuildContext context) {
    final friendActiveGoals = friend.myGoals!.where((goal) => !goal.completed!);

    final Goal lastGoadAdded = friendActiveGoals
        .reduce((a, b) => a.initDate!.isAfter(b.initDate!) ? a : b);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${friend.name!} ha aggiunto questo obbiettivo",
          style: const TextStyle(
            fontSize: 14,
            color: ActiveYouTheme.brandDarkColor,
          ),
        ),
        GoalListItem(goal: lastGoadAdded),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Divider(),
        ),
      ],
    );
  }
}
