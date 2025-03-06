import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fruits_ecommerce_app/core/services/stripe_service.dart';
import 'package:fruits_ecommerce_app/features/checkout/data/repos/checkout_repo.dart';

class CheckoutRepoImpl implements CheckoutRepo {
  final StripeService stripeService;

  CheckoutRepoImpl({required this.stripeService});
  @override
  Future<Either<String, void>> makePayment(
      {required int amount, required String currency}) async {
    try {
      await stripeService.makePayment(
        amount: amount,
        currency: currency,
      );
      return right(null);
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        return left('The operation was canceled.');
      } else if (e.error.code == FailureCode.Failed) {
        return left(
            'The payment attempt failed. Please check your payment details or try again.');
      } else if (e.error.code == FailureCode.Timeout) {
        return left(
            'The payment request timed out. Please check your network and try again.');
      } else if (e.error.code == FailureCode.Unknown) {
        return left('An unknown error occurred. Please try again later.');
      } else {
        return left('An error occurred. Please try again.');
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
