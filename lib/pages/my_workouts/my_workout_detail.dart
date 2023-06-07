import 'package:active_you/business/models/person_workout/person_workout.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/item_lists/exercise_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWorkoutDetailPage extends ConsumerWidget {
  const MyWorkoutDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PersonWorkout personWorkout =
        ModalRoute.of(context)?.settings.arguments as PersonWorkout;

    return Scaffold(
      appBar: MyAppBar(title: personWorkout.workout!.name!),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Lista esercizi",
              style: TextStyle(
                fontFamily: "Poppins-Bold",
                fontSize: 26,
                color: ActiveYouTheme.brandDarkColor,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: personWorkout.workout!.exercises!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExerciseCard(
                      exercise: personWorkout.workout!.exercises![index],
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Visibility(
          visible: personWorkout.completed == false,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: PrimaryButton(
              title: 'Segna come completato',
              onClick: () {
                ref
                    .read(myWorkoutsPageProvider.notifier)
                    .markWorkoutAsCompleted(personWorkout.id!);
              },
            ),
          ),
        ),
      ),

    );
  }
}
