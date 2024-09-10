import 'package:flutter/material.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    this.isChecked = false,
  });

  final String title;
  final String subtitle;
  final String price;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        border: isChecked ? Border.all(color: AppColor.primaryColor) : null,
        borderRadius: BorderRadius.circular(4),
        color: Color(0xffF2F3F3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 18,
                  height: 18,
                  decoration: ShapeDecoration(
                    color: isChecked ? Colors.white : Color(0xffF2F3F3),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: isChecked ? Colors.white : Color(0xff949D9E),
                      ),
                    ),
                  ),
                  child: isChecked
                      ? Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              color: AppColor.primaryColor,
                            ),
                          ),
                        )
                      : null,
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppStyle.styleSemibold13(context).copyWith(
                    color: AppColor.headerTextColor,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: AppStyle.styleRegular13(context),
                ),
              ],
            ),
            Spacer(),
            Text(
              price,
              style: AppStyle.styleBold13(context).copyWith(
                color: AppColor.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
