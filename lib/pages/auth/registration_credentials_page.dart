import 'package:active_you/navigation/endpoint.dart';
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

  final _isChecked = false;

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
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "registrationCredentials.lastName".tr(),
                      icon: SvgPicture.asset("assets/icons/profile.svg"),
                    ),
                    const SizedBox(height: 10),
                    SimpleTextFormField(
                      hintText: "Email",
                      icon: SvgPicture.asset("assets/icons/email.svg"),
                    ),
                    const SizedBox(height: 10),
                    const PasswordTextFormField(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      checkColor: Colors.white,
                      fillColor: _isChecked
                          ? MaterialStateProperty.all(
                              ActiveYouTheme.secondaryLightColor)
                          : MaterialStateProperty.all(
                              ActiveYouTheme.grayMediumColor),
                      value: _isChecked,
                      onChanged: (bool? value) {},
                    ),
                    Expanded(
                      child: Text(
                        "registrationCredentials.privacyPolicy".tr(),
                        style: const TextStyle(
                          fontFamily: "Poppins-Light",
                          fontSize: 10,
                          color: ActiveYouTheme.grayMediumColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PrimaryButton(
                    title: "button.register".tr(),
                    onClick: () => {
                          Navigator.pushNamed(context, EndPoint.registerInfo),
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
                          {Navigator.pushNamed(context, EndPoint.login)}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
