import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.name,
    );
  }
}
