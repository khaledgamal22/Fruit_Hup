import '../../domain/entities/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.nameProduct,
    required super.imageProduct,
    required super.priceProduct,
  });

  factory CartModel.fromFirebase(Map<String, dynamic> map) {
    return CartModel(
      nameProduct: map['nameProduct'] as String,
      imageProduct: map['imageProduct'] as String,
      priceProduct: map['priceProduct'] as num,
    );
  }
}
