import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8F9F9),
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
              backgroundColor: Color(0xffEBF9F1),
              child: Image.asset(
                Assets.imagesMyordericon,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طلب رقم : 1234567#',
                  style: AppStyle.styleBold13(context).copyWith(
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'تم الطلب :22 مارس ,2024',
                  style: AppStyle.styleRegular11(context),
                ),
                SizedBox(
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
                        text: '10  250 جنيه',
                        style: AppStyle.styleBold13(context).copyWith(
                          color: AppColor.headerTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.keyboard_arrow_down,
            ),
          ],
        ),
      ),
    );
  }
}
