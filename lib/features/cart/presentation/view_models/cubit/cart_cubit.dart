import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/repos/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());

  final CartRepo cartRepo;
  List<CartEntity> data = [];
  num total = 0;

  Future<void> addCartData({required CartEntity cartEntity}) async {
    await cartRepo.addCartData(cartEntity: cartEntity);
    emit(CartAdded());
  }

  Future<void> deleteCartData({required String id}) async {
    await cartRepo.deleteCartData(id: id);
    await getAllCartData();
    emit(CartSuccess(cartList: data));
  }

  Future<bool> checkIfCartDataExists({required String id}) async {
    return await cartRepo.checkIfCartDataExists(id: id);
  }

  Future<void> getAllCartData() async {
    emit(CartLoading());
    try {
      data = await cartRepo.getAllCartData();
      total = getTotalPayment(data);
      emit(
        CartSuccess(cartList: data),
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
      total += element.priceProduct;
    }
    return total;
  }
}
