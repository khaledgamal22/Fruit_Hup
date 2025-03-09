import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/repos/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());

  final CartRepo cartRepo;
  List<CartEntity> dataCart = [];
  num total = 0;

  Future<void> addCartData({
    required CartEntity cartEntity,
  }) async {
    try {
      emit(CartLoading());
      await cartRepo.addCartData(
          cartEntity: cartEntity, currentUser: getUser().userId);
      emit(CartAdded());
    } catch (e) {
      emit(
        CartFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> deleteCartData({
    required String id,
  }) async {
    await cartRepo.deleteCartData(id: id, currentUser: getUser().userId);
    await getAllCartData();
    emit(CartSuccess(cartList: dataCart, total: total));
  }

  Future<bool> checkIfCartDataExists({
    required String id,
  }) async {
    return await cartRepo.checkIfCartDataExists(
        id: id, currentUser: getUser().userId);
  }

  Future<void> getAllCartData() async {
    emit(CartLoading());
    try {
      dataCart = await cartRepo.getAllCartData(currentUser: getUser().userId);
      total = getTotalPayment(dataCart);
      emit(
        CartSuccess(cartList: dataCart, total: total),
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
      currentUser: getUser().userId,
    );
    List<CartEntity> dataCart =
        await cartRepo.getAllCartData(currentUser: getUser().userId);
    total = getTotalPayment(dataCart);
    emit(CartSuccess(cartList: dataCart, total: total));
  }
}
