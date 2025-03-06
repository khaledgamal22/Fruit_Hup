import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<String, void>> makePayment(
      {required int amount, required String currency});
}
