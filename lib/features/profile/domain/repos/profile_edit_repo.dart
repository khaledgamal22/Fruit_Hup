import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/errors/failure.dart';

abstract class ProfileEditRepo {
  Future<Either<Failure, void>> editInformationProfile();
}
