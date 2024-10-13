import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';

import 'review_model.dart';

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
    required super.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'] as String,
      image: json['image'] as String,
      price: json['price'] as num,
      rating: json['rating'] as num,
      ratingCount: json['ratingCount'] as int,
      description: json['description'] as String,
      id: json['id'] as String,
      calory: json['calory'] as int,
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
  ProductModel copyWith({
    String? name,
    String? image,
    double? price,
    double? rating,
    int? ratingCount,
    String? description,
    String? id,
    int? calory,
    List<ReviewModel>? reviews,
  }) {
    return ProductModel(
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      ratingCount: ratingCount ?? this.ratingCount,
      description: description ?? this.description,
      id: id ?? this.id,
      calory: calory ?? this.calory,
      reviews: reviews ?? this.reviews,
    );
  }
}
