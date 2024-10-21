import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:fruits_ecommerce_app/core/services/firebase_store_service.dart';
import 'package:fruits_ecommerce_app/core/services/hive_service.dart';
import 'package:fruits_ecommerce_app/features/Auth/data/repos/sign_up_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';
import 'package:fruits_ecommerce_app/features/all_products/data/repos/all_product_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/all_products/domain/repos/all_product_repo.dart';
import 'package:fruits_ecommerce_app/features/home/data/repos/home_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/home/data/repos/reviews_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/home/domain/repos/home_repo.dart';
import 'package:fruits_ecommerce_app/features/home/domain/repos/reviews_repo.dart';
import 'package:fruits_ecommerce_app/features/my_orders/data/repos/orders_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/repos/orders_repo.dart';
import 'package:fruits_ecommerce_app/features/profile/data/repos/favorite_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/profile/domain/repos/favorite_repo.dart';
import 'package:fruits_ecommerce_app/features/search/data/repos/search_repo_impl.dart';
import 'package:fruits_ecommerce_app/features/search/domain/repos/search_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/Auth/data/repos/sign_in_repo_impl.dart';
import '../../features/cart/data/repos/cart_repo_impl.dart';
import '../../features/cart/domain/repos/cart_repo.dart';

final getIt = GetIt.asNewInstance();

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseServices>(FirebaseStoreService());
  getIt.registerSingleton<HiveService>(HiveService());

  getIt.registerSingleton<FavoriteRepo>(
    FavoriteRepoImpl(
      hiveService: getIt.get<HiveService>(),
    ),
  );
  getIt.registerSingleton<CartRepo>(
    CartRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<SignUpRepo>(
    SignUpRepoImpl(
      firebaseAuthService: getIt.get<FirebaseAuthService>(),
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<SignInRepo>(
    SignInRepoImpl(
      firebaseAuthService: getIt.get<FirebaseAuthService>(),
    ),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
      hiveService: getIt.get<HiveService>(),
    ),
  );
  getIt.registerSingleton<SearchRepo>(
    SearchRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<ReviewsRepo>(
    ReviewsRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<AllProductRepo>(
    AllProductRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
  getIt.registerSingleton<OrdersRepo>(
    OrdersRepoImpl(
      databaseServices: getIt.get<DatabaseServices>(),
    ),
  );
}
