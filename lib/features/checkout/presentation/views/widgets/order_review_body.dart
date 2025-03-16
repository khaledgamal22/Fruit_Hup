import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/view_models/cubit/checkout_cubit.dart';
import 'package:fruits_ecommerce_app/features/my_orders/domain/entities/order_entity.dart';
import 'package:fruits_ecommerce_app/features/my_orders/presentation/view_models/orders/orders_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';
import 'package:quickalert/quickalert.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../uitilits/app_images.dart';
import '../../../../../uitilits/routing_name.dart';

// ignore: must_be_immutable
class OrderReviewBody extends StatelessWidget {
  OrderReviewBody(
      {super.key, required this.pageController, required this.orderEntity});
  final PageController pageController;
  final OrderEntity orderEntity;
  double serviceFee = 30;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckoutCubit, CheckoutState>(
      listener: (context, state) {
        if (state is CheckoutSuccess) {
          QuickAlert.show(
            context: context,
            confirmBtnColor: AppColor.primaryColor,
            type: QuickAlertType.success,
            title: S.of(context).success,
          );
          context.read<OrdersCubit>().addOrder(
                order: orderEntity,
              );
          Navigator.of(context).pushNamedAndRemoveUntil(
            RoutingName.home,
            (_) => false,
          );
        } else if (state is CheckoutFailure) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.error,
            title: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                '${S.of(context).order} :',
                style: AppStyle.styleBold13(context).copyWith(
                  color: AppColor.headerTextColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xffF9FAFA),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '${S.of(context).subtotal} :',
                            style: AppStyle.styleRegular13(context).copyWith(
                              color: const Color(0xff4E5556),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${orderEntity.totalPrice} ${S.of(context).pound}',
                            style: AppStyle.styleSemibold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '${S.of(context).delivery}  :',
                            style: AppStyle.styleRegular13(context).copyWith(
                              color: const Color(0xff4E5556),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '$serviceFee ${S.of(context).pound}',
                            style: AppStyle.styleRegular13(context).copyWith(
                              color: const Color(0xff4E5556),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                        thickness: 0.5,
                        color: Color(0xffCACECE),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).total,
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '${orderEntity.totalPrice + 30} ${S.of(context).pound}',
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xffF9FAFA),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '${S.of(context).address} :',
                            style: AppStyle.styleBold13(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(Assets.imagesEdit),
                          Text(
                            S.of(context).edit,
                            style: AppStyle.styleSemibold13(context).copyWith(
                              color: const Color(0xff949D9E),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(Assets.imagesLocation),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'شارع النيل، مبنى رقم ١٢٣',
                            style: AppStyle.styleRegular16(context).copyWith(
                              color: const Color(0xff4E5556),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: CustomButton(
                  title: S.of(context).confirmorder,
                  onTap: () {
                    context.read<CheckoutCubit>().checkout(
                        amount: (orderEntity.totalPrice + serviceFee).toInt(),
                        currency: 'EGP');
                  },
                ),
              ),
              const SizedBox(
                height: 120,
              ),
            ],
          ),
        );
      },
    );
  }
}
