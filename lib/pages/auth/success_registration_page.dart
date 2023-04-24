import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessRegistrationPage extends StatefulWidget {
  const SuccessRegistrationPage({Key? key}) : super(key: key);

  @override
  State<SuccessRegistrationPage> createState() =>
      _SuccessRegistrationPageState();
}

class _SuccessRegistrationPageState extends State<SuccessRegistrationPage> {
  @override
  Widget build(BuildContext context) {
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
              const Text(
                "Welcome, Raul",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 6),
              const Text(
                "You are all set now, let’s reach your \ngoals together with us",
                style: TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 12,
                    color: ActiveYouTheme.textBlackColor),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                  title: "Go To Home",
                  onClick: () => {Navigator.pushNamed(context, EndPoint.home)}),
            ],
          ),
        ),
      ),
    );
  }
}
