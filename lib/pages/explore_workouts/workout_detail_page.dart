import 'package:active_you/business/models/workout/workout.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/item_lists/exercise_card.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutDetailPage extends ConsumerWidget {
  const WorkoutDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Workout workout = ModalRoute.of(context)?.settings.arguments as Workout;

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
                    return ExerciseCard(exercise: workout.exercises![index]);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PrimaryButton(
            title: 'Aggiungi Workout',
            onClick: () {
              ref.read(sessionProvider.notifier).saveWorkout(workout);
            },
          ),
        ),
      ),
    );
  }
}