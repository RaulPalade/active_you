import 'package:active_you/business/providers/settings_provider/settings_provider.dart';
import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/intro/onboarding_state.dart';
import 'package:active_you/pages/intro/onboarding_vm.dart';
import 'package:active_you/pages/intro/widget/carousel_item.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnBoardingPage extends ConsumerWidget {
  OnBoardingPage({super.key});

  final List<String> _illustrations = [
    "assets/icons/carousel/frame1.png",
    "assets/icons/carousel/frame2.png",
    "assets/icons/carousel/frame3.png",
    "assets/icons/carousel/frame4.png"
  ];

  final List<String> _buttons = [
    "assets/icons/carousel/button1.png",
    "assets/icons/carousel/button2.png",
    "assets/icons/carousel/button3.png",
    "assets/icons/carousel/button4.png"
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController controller = PageController();
    final pageNumber = ref.watch(_pageNumber);

    return Container(
      color: ActiveYouTheme.scaffoldColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) => ref
                        .read(_onboardinPageProvider.notifier)
                        .setPageNumber(index),
                    children: [
                      CarouselItem(
                        image: Image.asset(_illustrations[pageNumber]),
                        title: "onBoardingCarousel.title1".tr(),
                        description: "onBoardingCarousel.description1".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(_illustrations[pageNumber]),
                        title: "onBoardingCarousel.title2".tr(),
                        description: "onBoardingCarousel.description2".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(_illustrations[pageNumber]),
                        title: "onBoardingCarousel.title3".tr(),
                        description: "onBoardingCarousel.description3".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(_illustrations[pageNumber]),
                        title: "onBoardingCarousel.title4".tr(),
                        description: "onBoardingCarousel.description4".tr(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    child: IconButton(
                      splashRadius: null,
                      icon: Image.asset(
                        _buttons[pageNumber],
                        width: 60,
                      ),
                      onPressed: () {
                        if (pageNumber == 3) {
                          ref.read(settingsProvider.notifier).setTutorialCompleted(true);
                          Navigator.pushReplacementNamed(context, EndPoint.pageCoordinator);
                        } else {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final _onboardinPageProvider =
    StateNotifierProvider.autoDispose<OnBoardingVM, OnBoardingState>(
        (ref) => OnBoardingVM(ref));

final _pageNumber = Provider.autoDispose<int>(
    (ref) => ref.watch(_onboardinPageProvider).pageNumber);
