import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.name,
    required super.image,
    required super.price,
    required super.rating,
    required super.ratingCount,
    required super.description,
    required super.id,
    required super.calory,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price'] as double,
      rating: json['rating'] as double,
      ratingCount: json['ratingCount'] as int,
      description: json['description'] as String,
      id: json['id'] as String,
      calory: json['calory'] as int,
    );
  }
}
