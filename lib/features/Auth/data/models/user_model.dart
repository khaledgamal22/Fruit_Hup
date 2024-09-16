import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.userId,
  });

  factory UserModel.fromfirbase(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      userId: user.uid,
    );
  }
  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      userId: user.userId,
    );
  }
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      userId: json['userId'],
    );
  }
}
