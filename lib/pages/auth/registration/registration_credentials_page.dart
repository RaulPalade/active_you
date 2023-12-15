import 'dart:developer';

import 'package:active_you/business/models/person/person.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/registration/registration_state.dart';
import 'package:active_you/pages/auth/registration/registration_vm.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/utils/registration_args.dart';
import 'package:active_you/widgets/buttons/link_button.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/buttons/social_button.dart';
import 'package:active_you/widgets/form/form_divier.dart';
import 'package:active_you/widgets/form/password_text_form_field.dart';
import 'package:active_you/widgets/form/role_selection_card.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationCredentialsPage extends ConsumerWidget {
  const RegistrationCredentialsPage({super.key});

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
              Text(
                "registrationCredentials.header".tr(),
                style: const TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: 16,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    SimpleTextFormField(
                      hintText: "registrationCredentials.firstName".tr(),
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                      onChaged: (firstName) => ref
                          .read(registrationProvider.notifier)
                          .setFirstName(firstName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "registrationCredentials.lastName".tr(),
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                      onChaged: (lastName) => ref
                          .read(registrationProvider.notifier)
                          .setLastName(lastName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Email",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (email) => ref
                          .read(registrationProvider.notifier)
                          .setEmail(email),
                    ),
                    const SizedBox(height: 10),
                    PasswordTextFormField(
                      onChanged: (password) => ref
                          .read(registrationProvider.notifier)
                          .setPassword(password),
                    ),
                    const SizedBox(height: 10),
                    RoleSelectionCard(
                      onSwitch: (role) =>
                          ref.read(registrationProvider.notifier).setRole(role),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PrimaryButton(
                    title: "button.register".tr(),
                    onClick: () {
                      _goNextPage(context, ref);
                    }),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: FormDivider(),
              ),
              GestureDetector(
                onTap: () => log("Login with google"),
                child: SocialButton(
                  logo: SvgPicture.asset("assets/icons/google.svg"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "registrationCredentials.haveAccountMessage".tr(),
                    style: const TextStyle(
                      fontFamily: "Poppins-Light",
                      fontSize: 14,
                    ),
                  ),
                  LinkButton(
                    title: "button.login".tr(),
                    textColor: ActiveYouTheme.secondaryLightColor,
                    underline: false,
                    onClick: () =>
                        Navigator.pushReplacementNamed(context, EndPoint.login),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _goNextPage(BuildContext context, WidgetRef ref) {
    final form = ref.watch(registrationProvider);

    if (form.firstName.isNotEmpty &&
        form.lastName.isNotEmpty &&
        form.email.isNotEmpty &&
        form.password.isNotEmpty) {
      Person currentUser = Person(
        name: form.firstName,
        surname: form.lastName,
        email: form.email,
        password: form.password,
        sex: null,
        dateOfBirth: null,
        weight: null,
        weightUnit: null,
        height: null,
        heightUnit: null,
        role: null,
        myWorkouts: null,
        createdWorkouts: null,
        myGoals: null,
        following: null,
        followers: null,
      );
      Navigator.pushNamed(
        context,
        EndPoint.registerInfo,
        arguments:
            RegistrationArgs(currentUser, ref.watch(registrationProvider).role),
      );
    } else {
      showFailureSnackBar(context, "Compila tutti i campi");
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

final registrationProvider =
    StateNotifierProvider<RegistrationVM, RegistrationState>((ref) {
  return RegistrationVM(ref);
});
