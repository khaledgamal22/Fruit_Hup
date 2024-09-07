import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../uitilits/routing_name.dart';

class PaymentsViewBody extends StatelessWidget {
  const PaymentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        buildCustomAppBar(
          context,
          'المدفوعات',
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Image.asset(Assets.imagesEdit),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(
            title: ' أضف وسيلة دفع جديده',
            onTap: () {
              Navigator.of(context)
                  .pushNamed(RoutingName.addNewPaymentMethodView);
            },
          ),
        ),
      ],
    );
  }
}
