import 'dart:convert';

import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';

import '../../features/Auth/data/models/user_model.dart';
import '../services/shared_preference_singleton.dart';

UserEntity getUser() {
  var userJson = SharedPreferenceSingleton.getString('userData');
  var userEntity = UserModel.fromJson(jsonDecode(userJson));
  return userEntity;
}
