import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

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
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  isfirst = true;
                  issecond = false;
                });
              },
              child: PaymentMethodWidget(
                title: S.of(context).cod,
                subtitle: S.of(context).recievefromplace,
                price: '40 ${S.of(context).pound}',
                isChecked: isfirst,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  isfirst = false;
                  issecond = true;
                });
              },
              child: PaymentMethodWidget(
                title: S.of(context).paynow,
                subtitle: S.of(context).paymentmethod,
                price: S.of(context).free,
                isChecked: issecond,
              ),
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(
            height: 40,
          ),
        ),
        CustomButton(
          title: S.of(context).next,
          onTap: () {
            widget.pageController.animateToPage(
              widget.pageController.page!.round() + 1,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeIn,
            );
          },
        ),
        const SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
