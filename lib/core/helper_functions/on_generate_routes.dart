import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/sign_up_view.dart';
import 'package:fruits_ecommerce_app/features/forget_password/presentation/views/forget_password_view.dart';
import 'package:fruits_ecommerce_app/features/forget_password/presentation/views/otp_verfication_view.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/all_best_seller_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/product_details_view.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/views/my_orders_view.dart';
import 'package:fruits_ecommerce_app/features/notification/presentation/views/notification_view.dart';
import 'package:fruits_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/about_us_view.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/information_profile_view.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/language_view.dart';
import 'package:fruits_ecommerce_app/features/search/presentation/views/search_view.dart';
import 'package:fruits_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce_app/uitilits/routing_name.dart';

import '../../features/checkout/presentation/views/checkout_view.dart';
import '../../features/forget_password/presentation/views/new_password_view.dart';
import '../../features/home/presentation/views/product_reviews_view.dart';
import '../../features/profile/presentation/views/add_new_payment_method_view.dart';
import '../../features/profile/presentation/views/my_favorite_products_view.dart';
import '../../features/profile/presentation/views/payments_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case RoutingName.splash:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case RoutingName.onBoarding:
      return MaterialPageRoute(
        builder: (context) => const OnBoardingView(),
      );
    case RoutingName.signIn:
      return MaterialPageRoute(
        builder: (context) => const SignInView(),
      );
    case RoutingName.signUp:
      return MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );
    case RoutingName.home:
      return MaterialPageRoute(
        builder: (context) => const HomeView(),
      );
    case RoutingName.allBestSeller:
      return MaterialPageRoute(
        builder: (context) => const AllBestSellerView(),
      );
    case RoutingName.productDetails:
      final ProductEntity productEntity = settings.arguments as ProductEntity;
      return MaterialPageRoute(
        builder: (context) => ProductDetailsView(
          productEntity: productEntity,
        ),
      );
    case RoutingName.aboutUs:
      return MaterialPageRoute(
        builder: (context) => const AboutUsView(),
      );
    case RoutingName.informationProfile:
      return MaterialPageRoute(
        builder: (context) => const InformationProfileView(),
      );
    case RoutingName.notification:
      return MaterialPageRoute(
        builder: (context) => const NotificationView(),
      );
    case RoutingName.search:
      return MaterialPageRoute(
        builder: (context) => const SearchView(),
      );
    case RoutingName.myOrders:
      return MaterialPageRoute(
        builder: (context) => const MyOrdersView(),
      );
    case RoutingName.forgetPass:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordView(),
      );
    case RoutingName.otpVerficationView:
      final String phone = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OtpVerficationView(
          phoneNumber: phone,
        ),
      );
    case RoutingName.newPass:
      return MaterialPageRoute(
        builder: (context) => const NewPasswordView(),
      );
    case RoutingName.favoriteProducts:
      return MaterialPageRoute(
        builder: (context) => const MyFavoriteProductsView(),
      );
    case RoutingName.payments:
      return MaterialPageRoute(
        builder: (context) => const PaymentsView(),
      );
    case RoutingName.addNewPaymentMethodView:
      return MaterialPageRoute(
        builder: (context) => const AddNewPaymentMethodView(),
      );
    case RoutingName.checkout:
      final OrderEntity orderEntity = settings.arguments as OrderEntity;
      return MaterialPageRoute(
        builder: (context) => CheckoutView(
          orderEntity: orderEntity,
        ),
      );
    case RoutingName.productReviews:
      final ProductEntity productEntity = settings.arguments as ProductEntity;
      return MaterialPageRoute(
        builder: (context) => ProductReviewsView(
          productEntity: productEntity,
        ),
      );
    case RoutingName.language:
      return MaterialPageRoute(
        builder: (context) => LanguageView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  }
}
