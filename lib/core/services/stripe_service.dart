import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../stripe_keys.dart';

class StripeService {
  Future<void> makePayment({
    required int amount,
    required String currency,
  }) async {
    try {
      String clientSecret = await _getPaymentIntentId(
        amount: (amount * 100).toString(),
        currency: currency,
      );
      await _initializePaymentSheet(clientSecret: clientSecret);
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> _initializePaymentSheet({required String clientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: 'Flutter Stripe Store',
      ),
    );
  }

  Future<String> _getPaymentIntentId(
      {required String amount, required String currency}) async {
    Dio dio = Dio();
    var response = await dio.post(
      'https://api.stripe.com/v1/payment_intents',
      options: Options(
        headers: {
          'Authorization': 'Bearer ${StripeKeys.secertKey}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
      data: {
        'amount': amount,
        'currency': currency,
      },
    );
    return response.data["client_secret"];
  }
}
