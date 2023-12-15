import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessRegistrationPage extends ConsumerWidget {
  const SuccessRegistrationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ModalRoute.of(context)?.settings.arguments as String;

    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(
                  "assets/icons/illustrations/success-registration.svg"),
              const SizedBox(height: 50),
              Text(
                "${"registrationSuccess.welcomeMessage".tr()}$currentUser",
                style: const TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 28,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 6),
              Text(
                "registrationSuccess.subHeader".tr(),
                style: const TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 16,
                    color: ActiveYouTheme.textBlackColor),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: PrimaryButton(
                  title: "Vai al Login",
                  onClick: () =>
                      Navigator.pushReplacementNamed(context, EndPoint.login),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
