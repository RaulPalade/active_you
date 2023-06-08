import 'package:active_you/theme/active_you_theme.dart';
import 'package:active_you/widgets/form/simple_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ActiveYouTheme.grayMediumColor.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Text(
              "Other",
              style: TextStyle(
                fontFamily: "Poppins-SemiBold",
                fontSize: 16,
              ),
            ),
          ),
          SimpleTextFormField(
            hintText: "Nome",
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            onChaged: (workoutName) => {},
          ),
          const SizedBox(height: 10),
          SimpleTextFormField(
            hintText: "Tipo",
            icon: SvgPicture.asset("assets/icons/email.svg"),
            onChaged: (workoutType) => {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
