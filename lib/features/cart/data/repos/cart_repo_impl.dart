import 'package:fruits_ecommerce_app/core/services/database_service.dart';

import 'package:fruits_ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/backend_endpoints.dart';

import '../../domain/repos/cart_repo.dart';

class CartRepoImpl implements CartRepo {
  final DatabaseServices databaseServices;

  CartRepoImpl({required this.databaseServices});
  @override
  Future addCartData({required CartEntity cartEntity}) async {
    await databaseServices.addData(
      path: BackendEndpoints.addCartData,
      data: cartEntity.toMap(),
    );
  }

  @override
  Future<void> deleteCartData({required String id}) {
    return databaseServices.deleteData(
      path: BackendEndpoints.addCartData,
      id: id,
    );
  }
}
