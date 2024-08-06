import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/all_best_seller_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/product_details_view.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/notification_view.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/about_us_view.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/information_profile_view.dart';
import 'package:fruits_ecommerce_app/features/search/presentation/views/search_view.dart';
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
    case ProductDetailsView.name:
      final String image = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => ProductDetailsView(
          image: image,
        ),
      );
    case AboutUsView.name:
      return MaterialPageRoute(
        builder: (context) => AboutUsView(),
      );
    case InformationProfileView.name:
      return MaterialPageRoute(
        builder: (context) => InformationProfileView(),
      );
    case NotificationView.name:
      return MaterialPageRoute(
        builder: (context) => NotificationView(),
      );
    case SearchView.name:
      return MaterialPageRoute(
        builder: (context) => SearchView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(),
      );
  }
}
