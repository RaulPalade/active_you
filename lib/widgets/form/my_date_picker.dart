import 'package:active_you/theme/active_you_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDatePicker extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateSelected;

  const MyDatePicker({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        color: ActiveYouTheme.cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              icon: GestureDetector(
                child: SvgPicture.asset(
                  "assets/icons/calendar.svg",
                  color: ActiveYouTheme.grayDarkColor,
                ),
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  ).then((pickedDate) {
                    if (pickedDate != null && pickedDate != selectedDate) {
                      onDateSelected(pickedDate);
                    }
                  });
                },
              ),
              iconColor: ActiveYouTheme.grayDarkColor,
              hintText: "registrationInfo.calendar".tr(),
              border: InputBorder.none,
            ),
            style: const TextStyle(
              fontFamily: "Poppins-Light",
              fontSize: 18,
              color: ActiveYouTheme.grayMediumColor,
            ),
          ),
        ),
      ),
    );
  }
}
