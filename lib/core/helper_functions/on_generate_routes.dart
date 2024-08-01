import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/all_best_seller_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.name:
      return MaterialPageRoute(
        builder: (context) => SplashView(),
      );
    case OnBoardingView.name:
      return MaterialPageRoute(
        builder: (context) => OnBoardingView(),
      );
    case SignInView.name:
      return MaterialPageRoute(
        builder: (context) => SignInView(),
      );
    case SignUpView.name:
      return MaterialPageRoute(
        builder: (context) => SignUpView(),
      );
    case HomeView.name:
      return MaterialPageRoute(
        builder: (context) => HomeView(),
      );
    case AllBestSellerView.name:
      return MaterialPageRoute(
        builder: (context) => AllBestSellerView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(),
      );
  }
}
