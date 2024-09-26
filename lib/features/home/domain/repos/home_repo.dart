import '../entities/product_entity.dart';

abstract class HomeRepo {
  Future<List<ProductEntity>> fetechHomeProducts();
  Future<bool> isProductInCart(
      {required String id, required String currentUser});
  Future<bool> checkIfProductIsFavorite({required String id});
  void deletProductFromFavorite({required String id});
}
