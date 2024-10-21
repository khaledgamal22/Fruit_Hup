import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_ecommerce_app/core/services/database_service.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';

import '../../../../uitilits/backend_endpoints.dart';
import '../../domain/repos/orders_repo.dart';
import '../models/order_model.dart';

class OrdersRepoImpl implements OrdersRepo {
  final DatabaseServices databaseServices;

  OrdersRepoImpl({required this.databaseServices});
  @override
  Future<List<OrderEntity>> getMyOrders({required String currentUser}) async {
    QuerySnapshot querySnapshot = await databaseServices.getAllData(
      path:
          '${BackendEndpoints.getUser}/$currentUser/${BackendEndpoints.getOrders}',
    );
    List<OrderEntity> orders = querySnapshot.docs
        .map((doc) => OrderModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return orders;
  }
}
