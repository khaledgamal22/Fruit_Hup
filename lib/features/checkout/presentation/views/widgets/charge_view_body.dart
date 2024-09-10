import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/checkout/presentation/views/widgets/row_check.dart';

import 'payment_method_widget.dart';

class ChargeViewBody extends StatefulWidget {
  const ChargeViewBody({super.key});

  @override
  State<ChargeViewBody> createState() => _ChargeViewBodyState();
}

class _ChargeViewBodyState extends State<ChargeViewBody> {
  bool isfirst = true;

  bool issecond = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        buildCustomAppBar(context, 'الشحن', null),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              RowCheck(
                items: [
                  RowcheckItem(
                    label: 'الشحن',
                  ),
                  RowcheckItem(
                    label: 'العنوان',
                    title: '2',
                  ),
                  RowcheckItem(
                    label: 'الدفع',
                    title: '3',
                  ),
                  RowcheckItem(
                    label: 'المراجعه',
                    title: '4',
                  ),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isfirst = true;
                    issecond = false;
                  });
                },
                child: PaymentMethodWidget(
                  title: 'الدفع عند الاستلام',
                  subtitle: 'التسليم من المكان',
                  price: '40 جنيه',
                  isChecked: isfirst,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isfirst = false;
                    issecond = true;
                  });
                },
                child: PaymentMethodWidget(
                  title: 'اشتري الان وادفع لاحقا',
                  subtitle: 'يرجي تحديد طريقه الدفع',
                  price: 'مجاني',
                  isChecked: issecond,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
