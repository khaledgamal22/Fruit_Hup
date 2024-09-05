class CartEntity {
  final String nameProduct;
  final String imageProduct;
  final num priceProduct;
  final int? amount;
  final String id;

  CartEntity({
    required this.nameProduct,
    required this.imageProduct,
    required this.priceProduct,
    required this.id,
    this.amount,
  });

  toMap() {
    return {
      'nameProduct': nameProduct,
      'imageProduct': imageProduct,
      'priceProduct': priceProduct,
      'amount': amount ?? 1,
      'id': id,
    };
  }
}
