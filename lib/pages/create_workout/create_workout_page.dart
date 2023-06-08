import 'package:active_you/pages/create_workout/create_workout_state.dart';
import 'package:active_you/pages/create_workout/create_workout_vm.dart';
import 'package:active_you/pages/create_workout/widgets/exercise_card.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/form/form_divier.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
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
                    ), //ExerciseCard()
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: PrimaryButton(title: "Salva Workout", onClick: () {}),
          ),
        ),
      ),
    );
  }
}

final createWorkoutPageProvider =
    StateNotifierProvider.autoDispose<CreateWorkoutVM, CreateWorkoutState>(
        (ref) => CreateWorkoutVM(ref));
