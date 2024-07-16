import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

void main() {
  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      home: SplashView(),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.name,
    );
  }
}
