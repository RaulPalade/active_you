import 'dart:developer';

import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/create_workout/create_workout_state.dart';
import 'package:active_you/pages/create_workout/create_workout_vm.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CreateWorkoutPage extends ConsumerWidget {
  const CreateWorkoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const MyAppBar(title: "Aggiungi Workout"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    SimpleTextFormField(
                      hintText: "Nome",
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                      onChaged: (workoutName) => ref
                          .read(createWorkoutPageProvider.notifier)
                          .setWorkoutName(workoutName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Tipo",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (workoutType) => ref
                          .read(createWorkoutPageProvider.notifier)
                          .setWorkoutType(workoutType),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: PrimaryButton(
                title: "Salva Workout",
                onClick: () {
                  createWorkoutAndGoToCreateExercise(context, ref);
                }),
          ),
        ),
      ),
    );
  }

  void createWorkoutAndGoToCreateExercise(BuildContext context, WidgetRef ref) {
    final form = ref.watch(createWorkoutPageProvider);
    if (form.workoutName.isNotEmpty && form.workoutType.isNotEmpty) {
      final res = ref.read(createWorkoutPageProvider.notifier).createWorkout();
      res.then((success) {
        if (success) {
          ref.read(createWorkoutPageProvider.notifier).resetWorkoutForm();
          Navigator.pushReplacementNamed(context, EndPoint.createExercise);
        } else {
          showFailureSnackBar(context, "Impossibile creare l'workout");
        }
      });
    } else {
      log("NOOO");
    }
  }

  void showFailureSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontFamily: "Poppins-Medium",
          fontSize: 14,
          color: ActiveYouTheme.whiteColor,
        ),
      ),
      backgroundColor: ActiveYouTheme.secondaryDarkColor,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

final createWorkoutPageProvider =
    StateNotifierProvider<CreateWorkoutVM, CreateWorkoutState>(
        (ref) => CreateWorkoutVM(ref));
