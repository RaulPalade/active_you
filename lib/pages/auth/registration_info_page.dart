import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/theme/active_you_theme.dart';
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
                    const GenderSelectionCard(),
                    const SizedBox(height: 10),
                    MyDatePicker(
                        selectedDate: DateTime.now(),
                        onDateSelected: (DateTime date) => {print(date)}),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: SimpleTextFormField(
                            hintText: "registrationInfo.weight".tr(),
                            icon: SvgPicture.asset("assets/icons/weight.svg"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const UnitMeasure(unitMeasures: ["KG", "LB"]),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: SimpleTextFormField(
                            hintText: "registrationInfo.height".tr(),
                            icon: SvgPicture.asset("assets/icons/swap.svg"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const UnitMeasure(unitMeasures: ["CM", "FT"]),
                      ],
                    ),
                  ],
                ),
              ),
              NextButton(
                  onClick: () => {
                        Navigator.pushNamed(
                            context, EndPoint.successRegistration)
                      }),
            ],
          ),
        ),
      ),
    );
  }
}
