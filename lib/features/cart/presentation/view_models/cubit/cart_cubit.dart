import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/cart/domain/repos/cart_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/cart_entity.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());

  final CartRepo cartRepo;
  List<CartEntity> data = [];

  Future<void> addCartData({required CartEntity cartEntity}) async {
    await cartRepo.addCartData(cartEntity: cartEntity);
    emit(CartAdded());
  }

  Future<void> deleteCartData({required String id}) async {
    await cartRepo.deleteCartData(id: id);
    emit(CartRemoved());
  }

  Future<void> getAllCartData() async {
    emit(CartLoading());
    try {
      data = await cartRepo.getAllCartData();
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
}
