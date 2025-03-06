import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:meta/meta.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit({required this.checkoutRepo}) : super(CheckoutInitial());
  final CheckoutRepo checkoutRepo;
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
