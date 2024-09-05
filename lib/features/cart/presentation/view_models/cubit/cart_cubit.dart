import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/repos/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());

  final CartRepo cartRepo;
  List<CartEntity> dataCart = [];
  num total = 0;

  Future<void> addCartData({required CartEntity cartEntity}) async {
    await cartRepo.addCartData(cartEntity: cartEntity);
    emit(CartAdded());
  }

  Future<void> deleteCartData({required String id}) async {
    await cartRepo.deleteCartData(id: id);
    await getAllCartData();
    emit(CartSuccess(cartList: dataCart));
  }

  Future<bool> checkIfCartDataExists({required String id}) async {
    return await cartRepo.checkIfCartDataExists(id: id);
  }

  Future<void> getAllCartData() async {
    emit(CartLoading());
    try {
      dataCart = await cartRepo.getAllCartData();
      total = getTotalPayment(dataCart);
      emit(
        CartSuccess(cartList: dataCart),
      );
    } catch (e) {
      emit(
        CartFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  getTotalPayment(List<CartEntity> data) {
    total = 0;
    for (var element in data) {
      int amount = element.amount ?? 1;
      total += element.priceProduct * amount;
    }
    return total;
  }

  Future<void> updateCartData({
    required String id,
    required Map<String, dynamic> data,
  }) async {
    await cartRepo.updateCartData(
      id: id,
      data: data,
    );
    total = getTotalPayment(dataCart);
    await getAllCartData();
  }
}
