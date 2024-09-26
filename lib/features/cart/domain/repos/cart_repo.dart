import '../entities/cart_entity.dart';

abstract class CartRepo {
  //Future<Either<Failure, List<CartEntity>>> getCartData();
  Future addCartData(
      {required CartEntity cartEntity, required String currentUser});
  Future<void> deleteCartData(
      {required String id, required String currentUser});
  Future<bool> checkIfCartDataExists(
      {required String id, required String currentUser});
  Future<List<CartEntity>> getAllCartData({required String currentUser});

  Future<void> updateCartData({
    required String id,
    required Map<String, dynamic> data,
    required String currentUser,
  });
}
