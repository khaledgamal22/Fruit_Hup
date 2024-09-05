import '../entities/cart_entity.dart';

abstract class CartRepo {
  //Future<Either<Failure, List<CartEntity>>> getCartData();
  Future addCartData({required CartEntity cartEntity});
  Future<void> deleteCartData({required String id});
  Future<bool> checkIfCartDataExists({required String id});
  Future<List<CartEntity>> getAllCartData();

  Future<void> updateCartData({
    required String id,
    required Map<String, dynamic> data,
  });
}
