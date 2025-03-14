import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key, required this.orderEntity});
  final OrderEntity orderEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF8F9F9),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: const Color(0xffEBF9F1),
              child: Image.asset(
                Assets.imagesMyordericon,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طلب رقم : ${orderEntity.oredrNumber}#',
                  style: AppStyle.styleBold13(context).copyWith(
                    color: const Color(0xff000000),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'تم الطلب : ${orderEntity.date}',
                  style: AppStyle.styleRegular11(context),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'عدد الطلبات : ',
                        style: AppStyle.styleRegular13(context),
                      ),
                      TextSpan(
                        text:
                            '${orderEntity.noOfItems}    ${orderEntity.totalPrice} جنيه',
                        style: AppStyle.styleBold13(context).copyWith(
                          color: AppColor.headerTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
