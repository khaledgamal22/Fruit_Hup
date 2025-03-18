import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/checkout/data/repos/checkout_repo.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit({required this.checkoutRepo}) : super(CheckoutInitial());

  static CheckoutCubit get(context) => BlocProvider.of(context);
  final CheckoutRepo checkoutRepo;
  TextEditingController addressController = TextEditingController();

  Future<void> checkout({required int amount, required String currency}) async {
    emit(CheckoutLoading());
    var response = await checkoutRepo.makePayment(
      amount: amount,
      currency: currency,
    );
    response.fold(
      (ifLeft) => emit(CheckoutFailure(errorMessage: ifLeft)),
      (ifRight) => emit(CheckoutSuccess()),
    );
  }
}
