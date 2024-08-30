import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/constant.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import '../../../../../uitilits/routing_name.dart';

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
    bool isAuth = isAuthenticated();
    bool isOnboardingSeeen =
        SharedPreferenceSingleton.getBool(kIsOnBoardingSeen);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        navigateOnboarding(isOnboardingSeeen, isAuth);
      },
    );
  }

  void navigateOnboarding(bool isSeen, bool isAuth) {
    if (isAuth) {
      Navigator.pushReplacementNamed(context, RoutingName.home);
    } else if (isSeen) {
      Navigator.pushReplacementNamed(context, RoutingName.signIn);
    } else {
      Navigator.pushReplacementNamed(
        context,
        RoutingName.onBoarding,
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

bool isAuthenticated() {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    return true;
  } else {
    return false;
  }
}
