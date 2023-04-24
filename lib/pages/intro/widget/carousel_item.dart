import 'package:active_you/theme/active_you_theme.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final Image image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        FractionallySizedBox(
          widthFactor: 0.6,
          child: image,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: "Poppins-Bold",
                ),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: ActiveYouTheme.textGreyColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
