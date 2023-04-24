import 'package:active_you/navigation/endpoint.dart';
import 'package:active_you/pages/intro/widget/carousel_item.dart';
import 'package:active_you/theme/active_you_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int _pageNumber = 0;
  List<String> illustrations = [
    "assets/icons/carousel/frame1.png",
    "assets/icons/carousel/frame2.png",
    "assets/icons/carousel/frame3.png",
    "assets/icons/carousel/frame4.png"
  ];

  List<String> buttons = [
    "assets/icons/carousel/button1.png",
    "assets/icons/carousel/button2.png",
    "assets/icons/carousel/button3.png",
    "assets/icons/carousel/button4.png"
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

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
                    onPageChanged: (index) => setState(() {
                      _pageNumber = index;
                    }),
                    children: [
                      CarouselItem(
                        image: Image.asset(illustrations[_pageNumber]),
                        title: "onBoardingCarousel.title1".tr(),
                        description: "onBoardingCarousel.description1".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(illustrations[_pageNumber]),
                        title: "onBoardingCarousel.title2".tr(),
                        description: "onBoardingCarousel.description2".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(illustrations[_pageNumber]),
                        title: "onBoardingCarousel.title3".tr(),
                        description: "onBoardingCarousel.description3".tr(),
                      ),
                      CarouselItem(
                        image: Image.asset(illustrations[_pageNumber]),
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
                        buttons[_pageNumber],
                        width: 60,
                      ),
                      onPressed: () {
                        if (_pageNumber == 3) {
                          Navigator.pushNamed(context, EndPoint.login);
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
