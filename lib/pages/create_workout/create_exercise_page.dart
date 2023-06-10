import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/create_workout/create_workout_page.dart';
import 'package:active_you/pages/page_coordinator.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/buttons/secondary_button.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CreateExercisePage extends ConsumerWidget {
  const CreateExercisePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Crea un nuovo workout",
                style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  fontSize: 16,
                  color: ActiveYouTheme.textBlackColor,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    SimpleTextFormField(
                      hintText: "Nome",
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                      onChaged: (exerciseName) => ref
                          .read(createWorkoutPageProvider.notifier)
                          .setExerciseName(exerciseName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Ripetizioni",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (repetitions) => ref
                          .read(createWorkoutPageProvider.notifier)
                          .setExerciseRepetitions(int.parse(repetitions)),
                    ), //ExerciseCard()
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Serie",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (series) => ref
                          .read(createWorkoutPageProvider.notifier)
                          .setExerciseSeries(int.parse(series)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(children: [
              Expanded(
                  child: PrimaryButton(
                      title: "Salva",
                      onClick: () {
                        addNewExercise(context, ref);
                      })),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: SecondaryButton(
                    title: "Esci",
                    onClick: () {
                      Navigator.pop(context);
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void addNewExercise(BuildContext context, WidgetRef ref) {
    final form = ref.watch(createWorkoutPageProvider);
    if (form.exerciseName.isNotEmpty &&
        form.exerciseRepetitions.toString().isNotEmpty &&
        form.exerciseSeries.toString().isNotEmpty) {
      final res = ref.read(createWorkoutPageProvider.notifier).createExercise();
      res.then((success) {
        if (success) {
          ref.read(createWorkoutPageProvider.notifier).resetExerciseForm();
          Navigator.pushReplacementNamed(context, EndPoint.createExercise);
        } else {
          showFailureSnackBar(context, "Impossibile aggiungere l'esercizio");
        }
      });
    }
  }

  void showSuccessSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontFamily: "Poppins-Medium",
          fontSize: 14,
          color: ActiveYouTheme.whiteColor,
        ),
      ),
      backgroundColor: ActiveYouTheme.brandDarkColor,
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
