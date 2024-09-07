import 'package:hive/hive.dart';

part 'favorite_model.g.dart';

@HiveType(typeId: 0)
class FavoriteModel extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final String id;

  FavoriteModel({
    required this.name,
    required this.image,
    required this.price,
    required this.id,
  });
}
