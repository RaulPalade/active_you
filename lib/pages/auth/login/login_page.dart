import 'package:active_you/business/providers/session_provider/session_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/auth/login/login_page_state.dart';
import 'package:active_you/pages/auth/login/login_page_vm.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/link_button.dart';
import 'package:active_you/widgets/buttons/login_button.dart';
import 'package:active_you/widgets/buttons/social_button.dart';
import 'package:active_you/widgets/form/form_divier.dart';
import 'package:active_you/widgets/form/password_text_form_field.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String emailInput = ref.watch(loginEmailProvider);
    String passwordInput = ref.watch(loginPasswordProvider);

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
                "login.message1".tr(),
                style: const TextStyle(
                  fontFamily: "Poppins-Light",
                  fontSize: 16,
                  color: ActiveYouTheme.textBlackColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "login.message2".tr(),
                style: const TextStyle(
                  fontFamily: "Poppins-Bold",
                  fontSize: 20,
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
                      hintText: "Email",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                    ),
                    const SizedBox(height: 10),
                    const PasswordTextFormField(),
                    const SizedBox(height: 10),
                    LinkButton(
                        title: "login.forgotPassword".tr(),
                        textColor: ActiveYouTheme.grayMediumColor,
                        underline: true,
                        onClick: () => {}),
                  ],
                ),
              ),
              const Spacer(),
              LoginButton(
                onClick: () => {
                  ref
                      .read(sessionProvider.notifier)
                      .login(emailInput, passwordInput)
                  // Navigator.popAndPushNamed(
                  //     context, EndPoint.pageCoordinator)
                },
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
                    "login.registerMessage".tr(),
                    style: const TextStyle(
                      fontFamily: "Poppins-Light",
                      fontSize: 14,
                    ),
                  ),
                  LinkButton(
                    title: "button.register".tr(),
                    textColor: ActiveYouTheme.secondaryLightColor,
                    underline: false,
                    onClick: () => {
                      Navigator.pushNamed(context, EndPoint.registerCredentials)
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

final loginPageProvider =
    StateNotifierProvider<LoginPageVM, LoginPageState>((ref) {
  return LoginPageVM(ref);
});

final loginEmailProvider = Provider<String>((ref) {
  return ref.watch(loginPageProvider).email;
});

final loginPasswordProvider = Provider<String>((ref) {
  return ref.watch(loginPageProvider).password;
});

final loginPasswordHiddenProvider = Provider<bool>((ref) {
  return ref.watch(loginPageProvider).passwordHidden;
});
