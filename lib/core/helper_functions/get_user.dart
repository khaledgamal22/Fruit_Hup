import 'dart:convert';

import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';

import '../../features/Auth/data/models/user_model.dart';
import '../services/shared_preference_singleton.dart';

UserEntity getUser() {
  var userJson = getIt.get<SharedPref>().getString('userData');
  var userEntity = UserModel.fromJson(jsonDecode(userJson));
  return userEntity;
}
