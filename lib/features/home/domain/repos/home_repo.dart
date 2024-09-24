import '../entities/product_entity.dart';

abstract class HomeRepo {
  Future<List<ProductEntity>> fetechHomeProducts();
  Future<bool> isProductInCart({required String id});
}
