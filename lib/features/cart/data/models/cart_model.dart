class CartModel {
  final String nameProduct;
  final String imageProduct;
  final num priceProduct;

  CartModel({
    required this.nameProduct,
    required this.imageProduct,
    required this.priceProduct,
  });

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      nameProduct: map['nameProduct'],
      imageProduct: map['imageProduct'],
      priceProduct: map['priceProduct'],
    );
  }
}
