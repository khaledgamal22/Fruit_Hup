class CartEntity {
  final String nameProduct;
  final String imageProduct;
  final num priceProduct;

  CartEntity({
    required this.nameProduct,
    required this.imageProduct,
    required this.priceProduct,
  });

  toMap() {
    return {
      'nameProduct': nameProduct,
      'imageProduct': imageProduct,
      'priceProduct': priceProduct,
    };
  }
}
