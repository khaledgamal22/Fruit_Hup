import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/constant.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_pageview.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../uitilits/routing_name.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          decorator: DotsDecorator(
            spacing: const EdgeInsets.all(5),
            color: currentIndex == 1
                ? AppColor.primaryColor
                : AppColor.primaryColor.withOpacity(0.5),
            activeColor: AppColor.primaryColor,
            size: currentIndex == 1 ? const Size(11, 11) : const Size(9, 9),
            activeSize: const Size(11, 11),
          ),
          dotsCount: 2,
        ),
        const SizedBox(
          height: 30,
        ),
        Visibility(
          visible: currentIndex == 1,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: GestureDetector(
              onTap: () {
                SharedPref.setBool(kIsOnBoardingSeen, true);
                Navigator.pushReplacementNamed(context, RoutingName.signIn);
              },
              child: const CustomButton(
                title: 'ابدأ الان',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
      ],
    );
  }
}
