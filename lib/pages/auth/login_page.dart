import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/buttons/link_button.dart';
import 'package:active_you/widgets/buttons/social_button.dart';
import 'package:active_you/widgets/form/gender_selection_card.dart';
import 'package:active_you/widgets/form/password_text_form_field.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:active_you/widgets/form/unit_measure.dart';
import 'package:active_you/widgets/tab/simple_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/form/my_date_picker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              const SizedBox(height: 20),
              const Text(
                "Hey There,",
                style: TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 16,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 4),
              const Text(
                "Welcome Back",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 20,
                    color: ActiveYouTheme.textBlackColor),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Column(
                  children: [
                    SimpleTextFormField(
                      hintText: "Email",
                      icon: SvgPicture.asset("assets/icons/weight.svg"),
                    ),
                    const PasswordTextFormField(),
                    MyDatePicker(
                      selectedDate: DateTime.now(),
                      onDateSelected: (DateTime) {},
                    ),
                    const GenderSelectionCard(),
                    Row(
                      children: [
                        Expanded(
                          child: SimpleTextFormField(
                            hintText: "Your Height",
                            icon: SvgPicture.asset("assets/icons/weight.svg"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const UnitMeasure(
                            unitMeasures: ["CM", "FT", "XX", "YY"]),
                      ],
                    ),
                    SocialButton(
                      logo: SvgPicture.asset("assets/icons/google.svg"),
                    ),
                    LinkButton(
                        title: "Login",
                        textColor: ActiveYouTheme.secondaryDarkColor,
                        onClick: () => {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
