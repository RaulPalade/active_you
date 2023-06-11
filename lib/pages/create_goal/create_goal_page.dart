import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:active_you/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import 'package:active_you/utils/snackbars.dart';
import 'create_goal_state.dart';
import 'create_goal_vm.dart';

class CreateGoalPage extends ConsumerWidget {
  const CreateGoalPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          appBar: const MyAppBar(title: "Aggiungi goal"),
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
                      onChaged: (name) => ref
                          .read(createGoalPageProvider.notifier)
                          .setName(name),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Tipo",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (type) => ref
                          .read(createGoalPageProvider.notifier)
                          .setType(type),
                    ), //ExerciseCard()
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Peso",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (series) => ref
                          .read(createGoalPageProvider.notifier)
                          .setWeight(double.parse(series)),
                    ),
                    SimpleTextFormField(
                      hintText: "Giorni a settimana",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (daysPerWeek) => ref
                          .read(createGoalPageProvider.notifier)
                          .setDaysPerWeek(int.parse(daysPerWeek)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: PrimaryButton(
                title: "Salva",
                onClick: () {
                  addNewGoal(context, ref);
                }),
          ),
        ),
      ),
    );
  }

  void addNewGoal(BuildContext context, WidgetRef ref) {
    final form = ref.watch(createGoalPageProvider);
    if (form.name.isNotEmpty &&
        form.type.isNotEmpty &&
        form.weight.toString().isNotEmpty &&
        form.daysPerWeek.toString().isNotEmpty) {
      final res = ref.read(createGoalPageProvider.notifier).addGoal();
      res.then((success) {
        if (success) {
          ref.read(createGoalPageProvider.notifier).resetForm();
          SnackBars.showSuccessSnackBar(context, "Goal aggiunto");
          Navigator.pop(context);
        } else {
          SnackBars.showFailureSnackBar(
              context, "Impossibile aggiungere il goal");
        }
      });
    }
  }
}

final createGoalPageProvider =
    StateNotifierProvider<CreateGoalVM, CreateGoalState>(
        (ref) => CreateGoalVM(ref));
