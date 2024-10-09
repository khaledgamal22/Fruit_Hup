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

  Future<void> addCartData(
      {required CartEntity cartEntity, required String currentUser}) async {
    await cartRepo.addCartData(
        cartEntity: cartEntity, currentUser: currentUser);
    emit(CartAdded());
  }

  Future<void> deleteCartData(
      {required String id, required String currentUser}) async {
    await cartRepo.deleteCartData(id: id, currentUser: currentUser);
    await getAllCartData(currentUser: currentUser);
    emit(CartSuccess(cartList: dataCart, total: total));
  }

  Future<bool> checkIfCartDataExists(
      {required String id, required String currentUser}) async {
    return await cartRepo.checkIfCartDataExists(
        id: id, currentUser: currentUser);
  }

  Future<void> getAllCartData({required String currentUser}) async {
    emit(CartLoading());
    try {
      dataCart = await cartRepo.getAllCartData(currentUser: currentUser);
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
    required String currentUser,
  }) async {
    await cartRepo.updateCartData(
      id: id,
      data: data,
      currentUser: currentUser,
    );
    List<CartEntity> dataCart =
        await cartRepo.getAllCartData(currentUser: currentUser);
    total = getTotalPayment(dataCart);
    emit(CartSuccess(cartList: dataCart, total: total));
  }
}
