import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/repos/orders_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/order_entity.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit({required this.ordersRepo}) : super(OrdersInitial());
  final OrdersRepo ordersRepo;
  Future<void> getOrders() async {
    emit(
      OrdersLoading(),
    );
    try {
      List<OrderEntity> orders = await ordersRepo.getMyOrders(
        currentUser: getUser().userId,
      );
      emit(
        OrdersSuccess(
          orders: orders,
        ),
      );
    } catch (e) {
      emit(
        OrdersFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> addOrder({
    required OrderEntity order,
  }) async {
    try {
      await ordersRepo.addOrder(
        order: order,
        currentUser: getUser().userId,
      );
      emit(
        OrdersAdded(),
      );
    } catch (e) {
      emit(
        OrdersFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
