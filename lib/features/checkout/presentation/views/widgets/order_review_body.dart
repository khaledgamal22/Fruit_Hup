import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../uitilits/app_images.dart';

class OrderReviewBody extends StatelessWidget {
  const OrderReviewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'ملخص الطلب :',
          style: AppStyle.styleBold13(context).copyWith(
            color: AppColor.headerTextColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF9FAFA),
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
                      'المجموع الفرعي :',
                      style: AppStyle.styleRegular13(context).copyWith(
                        color: Color(0xff4E5556),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '150 جنيه',
                      style: AppStyle.styleSemibold16(context).copyWith(
                        color: AppColor.headerTextColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'التوصيل  :',
                      style: AppStyle.styleRegular13(context).copyWith(
                        color: Color(0xff4E5556),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '30جنية',
                      style: AppStyle.styleRegular13(context).copyWith(
                        color: Color(0xff4E5556),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  indent: 40,
                  endIndent: 40,
                  thickness: 0.5,
                  color: Color(0xffCACECE),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'الكلي',
                      style: AppStyle.styleBold16(context).copyWith(
                        color: AppColor.headerTextColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '180 جنيه',
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
        SizedBox(
          height: 20,
        ),
        Text(
          'يرجي تأكيد  طلبك',
          style: AppStyle.styleBold13(context).copyWith(
            color: AppColor.headerTextColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF9FAFA),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'وسيلة الدفع',
                      style: AppStyle.styleBold13(context).copyWith(
                        color: AppColor.headerTextColor,
                      ),
                    ),
                    Spacer(),
                    Image.asset(Assets.imagesEdit),
                    Text(
                      'تعديل',
                      style: AppStyle.styleSemibold13(context).copyWith(
                        color: Color(0xff949D9E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Spacer(),
                    Text(
                      '6522 **** **** ****',
                      style: AppStyle.styleRegular16(context).copyWith(
                        color: Color(0xff4E5556),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 34,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff1434CB),
                        border: Border.all(
                          color: Color(0xffD6DCE5),
                        ),
                      ),
                      child: Image.asset(
                        Assets.imagesVisa,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xffF9FAFA),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'عنوان التوصيل',
                      style: AppStyle.styleBold13(context).copyWith(
                        color: AppColor.headerTextColor,
                      ),
                    ),
                    Spacer(),
                    Image.asset(Assets.imagesEdit),
                    Text(
                      'تعديل',
                      style: AppStyle.styleSemibold13(context).copyWith(
                        color: Color(0xff949D9E),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(Assets.imagesLocation),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'شارع النيل، مبنى رقم ١٢٣',
                      style: AppStyle.styleRegular16(context).copyWith(
                        color: Color(0xff4E5556),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Spacer(),
        CustomButton(
          title: 'تأكيد الطلب',
          onTap: () {},
        ),
        SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
