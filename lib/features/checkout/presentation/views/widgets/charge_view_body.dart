import 'package:flutter/material.dart';

import '../../../../../uitilits/widgets/custom_button.dart';
import 'payment_method_widget.dart';

class ChargeViewBody extends StatefulWidget {
  const ChargeViewBody({super.key, required this.pageController});

  final PageController pageController;

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
        Column(
          children: [
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
        Expanded(
          child: SizedBox(
            height: 40,
          ),
        ),
        CustomButton(
          title: 'التالي',
          onTap: () {
            widget.pageController.animateToPage(
              widget.pageController.page!.round() + 1,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeIn,
            );
          },
        ),
        SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
