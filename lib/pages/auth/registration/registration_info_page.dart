import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/business/models/person_role/person_role.dart';
import 'package:active_you/business/models/role/role.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/registration/registration_credentials_page.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/registration_args.dart';
import 'package:active_you/widgets/buttons/next_button.dart';
import 'package:active_you/widgets/form/gender_selection_card.dart';
import 'package:active_you/widgets/form/my_date_picker.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:active_you/widgets/form/unit_measure.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationInfoPage extends ConsumerWidget {
  const RegistrationInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final args = ModalRoute.of(context)?.settings.arguments as RegistrationArgs;

    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset("assets/icons/illustrations/registration2.svg"),
              const Spacer(),
              Text(
                "registrationInfo.header".tr(),
                style: const TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 4),
              Text(
                "registrationInfo.subHeader".tr(),
                style: const TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 12,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    GenderSelectionCard(
                      onSwitch: (sex) =>
                          ref.read(registrationProvider.notifier).setSex(sex),
                    ),
                    const SizedBox(height: 10),
                    MyDatePicker(
                      selectedDate: DateTime.now(),
                      onDateSelected: (DateTime date) => ref
                          .read(registrationProvider.notifier)
                          .setDateOfBirth(date),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: SimpleTextFormField(
                            hintText: "registrationInfo.weight".tr(),
                            icon: SvgPicture.asset("assets/icons/weight.svg"),
                            onChaged: (weight) => ref
                                .read(registrationProvider.notifier)
                                .setWeight(weight),
                          ),
                        ),
                        const SizedBox(width: 12),
                        UnitMeasure(
                          unitMeasures: const ["KG", "LB"],
                          onChange: (unit) => ref
                              .read(registrationProvider.notifier)
                              .setWeightUnit(unit),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: SimpleTextFormField(
                            hintText: "registrationInfo.height".tr(),
                            icon: SvgPicture.asset("assets/icons/swap.svg"),
                            onChaged: (height) => ref
                                .read(registrationProvider.notifier)
                                .setHeight(height),
                          ),
                        ),
                        const SizedBox(width: 12),
                        UnitMeasure(
                          unitMeasures: const ["CM", "FT"],
                          onChange: (unit) => ref
                              .read(registrationProvider.notifier)
                              .setHeightUnit(unit),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              NextButton(
                onClick: () => {
                  _registerUserAndGoNext(context, ref, args.person, args.role)
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _registerUserAndGoNext(
      BuildContext context, WidgetRef ref, Person user, String role) {
    final form = ref.watch(registrationProvider);

    if (form.sex.isNotEmpty &&
        form.weight != 0 &&
        form.weightUnit.isNotEmpty &&
        form.height != 0 &&
        form.heightUnit.isNotEmpty) {
      Person currentUser = user.copyWith(
        sex: form.sex,
        dateOfBirth: form.dateOfBirth,
        weight: form.weight,
        weightUnit: form.weightUnit,
        height: form.height,
        heightUnit: form.heightUnit,
      );

      PersonRole personRole =
          PersonRole(person: currentUser, role: Role(id: null, name: role, persons: null));

      final response = ref.read(sessionProvider.notifier).register(personRole);
      response.then((success) {
        if (success) {
          showSuccessSnackBar(context, "Registrazione Effettuata!");
          Navigator.pushReplacementNamed(context, EndPoint.successRegistration,
              arguments: currentUser.name);
        } else {
          showFailureSnackBar(context, "Errore durante la registrazione!");
        }
      });
    } else {
      showFailureSnackBar(context, "Compila tutti i campi");
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
