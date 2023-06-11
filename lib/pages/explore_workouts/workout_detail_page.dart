import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/create_workout/create_workout_page.dart';
import 'package:active_you/pages/my_workouts/my_workouts_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/snackbars.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/buttons/secondary_button.dart';
import 'package:active_you/widgets/item_lists/exercise_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutDetailPage extends ConsumerWidget {
  const WorkoutDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Workout workout = ModalRoute.of(context)?.settings.arguments as Workout;
    final currentPerson = ref.watch(currentPersonProvider);
    final myWorkouts = ref.watch(activeWorkoutsProvider);

    bool isMyWorkout = (workout.createdById == currentPerson?.id);
    bool isInMyWorkouts = myWorkouts!.any((personWorkout) =>
        personWorkout.workout!.id == workout.id &&
        personWorkout.idPerson == currentPerson!.id);

    return Scaffold(
      appBar: MyAppBar(title: workout.name!),
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
                  itemCount: workout.exercises!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: ExerciseCard(exercise: workout.exercises![index]),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: isMyWorkout
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SecondaryButton(
                        title: 'Aggiungi Esercizio',
                        onClick: () {
                          ref
                              .read(createWorkoutPageProvider.notifier)
                              .setWorkoutIdForExercise(workout.id!);
                          Navigator.pushNamed(context, EndPoint.createExercise);
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    if (!isInMyWorkouts)
                      Expanded(
                        flex: 1,
                        child: PrimaryButton(
                          title: 'Salva Workout',
                          onClick: () {
                            ref
                                .read(sessionProvider.notifier)
                                .saveWorkout(workout);
                          },
                        ),
                      ),
                  ],
                )
              : PrimaryButton(
                  title: 'Salva Workout',
                  onClick: () {
                    final response =
                        ref.read(sessionProvider.notifier).saveWorkout(workout);
                    response.then((bool success) {
                      if (success) {
                        SnackBars.showSuccessSnackBar(
                            context, "Workout saved!");
                        Navigator.pop(context);
                      } else {
                        SnackBars.showFailureSnackBar(
                            context, "Failed to save Workout!");
                      }
                    });
                  },
                ),
        ),
      ),
    );
  }
}
