import 'package:active_you/business/models/goal/goal.dart';
import 'package:active_you/pages/create_goal/create_goal_page.dart';
import 'package:active_you/utils/extensions.dart';
import 'package:active_you/utils/snackbars.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoalDetailPage extends ConsumerWidget {
  const GoalDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Goal goal = ModalRoute.of(context)?.settings.arguments as Goal;
    bool completed = goal.completed ?? false;

    DateTime dateInit = DateTime.parse(goal.initDate.toString());

    String endDate = "";
    if (goal.endDate != null) {
      DateTime dateEnd = DateTime.parse(goal.endDate.toString());
      endDate = DateFormat('EEEE d MMMM yyyy', 'it_IT').format(dateEnd);
    }

    String initDate = DateFormat('EEEE d MMMM yyyy', 'it_IT').format(dateInit);

    return Scaffold(
      appBar: MyAppBar(title: goal.name!),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tipologia: ${goal.type}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Peso obiettivo: ${goal.weight} kg",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Giorni alla settimana: ${goal.daysPerWeek}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Data di inizio: ${initDate.capitalizeFirstLetter()}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            completed
                ? Text(
                    "Data di completamento: ${endDate.capitalizeFirstLetter()}",
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                : Container(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PrimaryButton(
            title: 'Segna come completato',
            onClick: () {
              final response = ref
                  .read(createGoalPageProvider.notifier)
                  .removeGoal(goal.id!);
              response.then((bool success) {
                if (success) {
                  SnackBars.showSuccessSnackBar(
                      context, "Goal marked as completed!");
                  Navigator.pop(context);
                } else {
                  SnackBars.showFailureSnackBar(
                      context, "Failed to mark goal as completed!");
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
