import 'package:active_you/business/models/person/person_to_register.dart';
import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/registration_credentials/registration_credentials_page_state.dart';
import 'package:active_you/pages/auth/registration_credentials/registration_credentials_vm.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/link_button.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:active_you/widgets/buttons/social_button.dart';
import 'package:active_you/widgets/form/form_divier.dart';
import 'package:active_you/widgets/form/password_text_form_field.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationCredentialsPage extends ConsumerWidget {
  const RegistrationCredentialsPage({Key? key}) : super(key: key);

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
                          .read(_registrationCredentialsPageProvider.notifier)
                          .setFirstName(firstName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "registrationCredentials.lastName".tr(),
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                      onChaged: (lastName) => ref
                          .read(_registrationCredentialsPageProvider.notifier)
                          .setLastName(lastName),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Email",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                      onChaged: (email) => ref
                          .read(_registrationCredentialsPageProvider.notifier)
                          .setEmail(email),
                    ),
                    const SizedBox(height: 10),
                    PasswordTextFormField(
                      onChanged: (password) => ref
                          .read(_registrationCredentialsPageProvider.notifier)
                          .setPassword(password),
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
                      _registerUserAndGoNextPage(context, ref);
                    }),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: FormDivider(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    logo: SvgPicture.asset("assets/icons/google.svg"),
                  ),
                  const SizedBox(width: 24),
                  SocialButton(
                    logo: SvgPicture.asset("assets/icons/facebook.svg"),
                  ),
                ],
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

  void _registerUserAndGoNextPage(BuildContext context, WidgetRef ref) {
    String firstNameInput = ref.watch(_registrationFirstNameProvider);
    String lastNameInput = ref.watch(_registrationLastNameProvider);
    String emailInput = ref.watch(_registrationEmailProvider);
    String passwordInput = ref.watch(_registrationPasswordProvider);

    PersonToRegister person = PersonToRegister(
      name: firstNameInput,
      surname: lastNameInput,
      email: emailInput,
      password: passwordInput,
    );

    final response = ref.read(sessionProvider.notifier).register(person);
    response.then((success) {
      if (success) {
        showSuccessSnackBar(context, "Registrazione Effettuata!");
        Navigator.pushNamed(context, EndPoint.registerInfo);
      } else {
        showFailureSnackBar(context, "Errore durante la registrazione!");
      }
    });
  }
}

final _registrationCredentialsPageProvider = StateNotifierProvider<
    RegistrationCredentialsVM, RegistrationCredentialsPageState>((ref) {
  return RegistrationCredentialsVM(ref);
});

final _registrationFirstNameProvider = Provider<String>((ref) {
  return ref.watch(_registrationCredentialsPageProvider).firstName;
});

final _registrationLastNameProvider = Provider<String>((ref) {
  return ref.watch(_registrationCredentialsPageProvider).lastName;
});

final _registrationEmailProvider = Provider<String>((ref) {
  return ref.watch(_registrationCredentialsPageProvider).email;
});

final _registrationPasswordProvider = Provider<String>((ref) {
  return ref.watch(_registrationCredentialsPageProvider).password;
});
