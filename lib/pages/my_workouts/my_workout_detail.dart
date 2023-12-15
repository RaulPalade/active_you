import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/extensions.dart';
import 'package:active_you/utils/snackbars.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/item_lists/exercise_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWorkoutDetailPage extends ConsumerWidget {
  const MyWorkoutDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Workout workout = ModalRoute.of(context)?.settings.arguments as Workout;
    bool completed = workout.completed ?? false;

    DateTime dateInit = DateTime.parse(workout.initDate.toString());

    String endDate = "";
    if (workout.endDate != null) {
      DateTime dateEnd = DateTime.parse(workout.endDate.toString());
      endDate = DateFormat('EEEE d MMMM yyyy', 'it_IT').format(dateEnd);
    }

    String initDate = DateFormat('EEEE d MMMM yyyy', 'it_IT').format(dateInit);

    return Scaffold(
      appBar: MyAppBar(title: workout.name!),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tipologia: ${workout.type}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
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
                const SizedBox(height: 40),
                const Text(
                  "Lista esercizi",
                  style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 26,
                    color: ActiveYouTheme.brandDarkColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: workout.exercises!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseCard(
                      exercise: workout.exercises![index],
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Visibility(
          visible: completed == false,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: PrimaryButton(
              title: 'Segna come completato',
              onClick: () {
                final response = ref
                    .read(myWorkoutsPageProvider.notifier)
                    .markWorkoutAsCompleted(workout.id!);
                response.then((bool success) {
                  if (success) {
                    SnackBars.showSuccessSnackBar(
                        context, "Workout marked as completed!");
                    Navigator.pop(context);
                  } else {
                    SnackBars.showFailureSnackBar(
                        context, "Failed to mark as completed!");
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
