import 'package:dartz/dartz.dart';

abstract class ProfileEditRepo {
  Future<Either<String, void>> editInformationProfile(
      {required Map<String, dynamic> data});
}
