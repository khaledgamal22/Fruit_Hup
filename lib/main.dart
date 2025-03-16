import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fruits_ecommerce_app/core/global_cubits/cubit/change_language_cubit.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/firebase_options.dart';
import 'package:fruits_ecommerce_app/stripe_keys.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/profile/data/models/favorite_model.dart';
import 'fruit_hup_app.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FavoriteModelAdapter());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  await getIt.get<SharedPref>().init();
  Stripe.publishableKey = StripeKeys.publishableKey;
  runApp(
    BlocProvider(
      create: (context) => ChangeLanguageCubit(),
      child: const FruitHup(),
    ),
  );
}
