import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce_app/constant.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce_app/firebase_options.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/profile/data/models/favorite_model.dart';
import 'uitilits/routing_name.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteModelAdapter());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPref.init();
  setupGetIt();

  final bool isDarkMode = SharedPref.getBool(kDarkMode);
  runApp(
    FruitHup(),
  );
}

class FruitHup extends StatelessWidget {
  const FruitHup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
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
      initialRoute: RoutingName.splash,
    );
  }
}
