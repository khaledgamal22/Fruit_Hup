import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/constant.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  void executeNavigation() {
    bool isOnboardingSeeen =
        SharedPreferenceSingleton.getBool(kIsOnBoardingSeen);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        navigateOnboarding(isOnboardingSeeen);
      },
    );
  }

  void navigateOnboarding(bool isSeen) {
    if (isSeen) {
      Navigator.pushReplacementNamed(context, SignInView.name);
    } else {
      Navigator.pushReplacementNamed(
        context,
        OnBoardingView.name,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              Assets.imagesSplashtop,
            ),
          ],
        ),
        Image.asset(
          Assets.imagesSplashLogo,
        ),
        Image.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
