import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

import 'core/global_cubits/cubit/change_language_cubit.dart';
import 'core/helper_functions/get_it_func.dart';
import 'core/helper_functions/on_generate_routes.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'uitilits/routing_name.dart';

class FruitHup extends StatelessWidget {
  const FruitHup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: Locale(getIt.get<SharedPref>().getCurrentLanguage()),
          home: const SplashView(),
          onGenerateRoute: onGenerateRoutes,
          initialRoute: RoutingName.splash,
        );
      },
    );
  }
}
