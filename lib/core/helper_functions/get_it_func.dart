import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/features/Auth/data/repos/sign_up_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/Auth/data/repos/sign_in_repo_impl.dart';

final getIt = GetIt.asNewInstance();

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<SignUpRepo>(
    SignUpRepoImpl(
      firebaseAuthService: getIt.get<FirebaseAuthService>(),
    ),
  );
  getIt.registerSingleton<SignInRepo>(
    SignInRepoImpl(
      firebaseAuthService: getIt.get<FirebaseAuthService>(),
    ),
  );
}
