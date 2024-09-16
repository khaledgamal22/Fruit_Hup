import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/switch_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../uitilits/widgets/custom_button.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'العنوان',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'المدينه',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'رقم الطابق , رقم الشقه ..',
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Transform.rotate(
                  angle: 180 * 3.14 / 180,
                  child: SwitchButton(),
                ),
                Text(
                  'حفظ العنوان',
                  style: AppStyle.styleSemibold13(context).copyWith(
                    color: Color(0xff949D9E),
                  ),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: SizedBox(),
        ),
        CustomButton(
          title: 'التالي',
          onTap: () {
            pageController.animateToPage(
              pageController.page!.round() + 1,
              duration: Duration(milliseconds: 100),
              curve: Curves.easeIn,
            );
          },
        ),
        SizedBox(
          height: 120,
        )
      ],
    );
  }
}



// Transform.scale(
//                     alignment: Alignment.centerRight,
//                     scale: 0.6,
//                     child: Transform.rotate(
//                       angle: 180 * 3.14 / 180,
//                       child: Switch(
//                         value: true,
//                         activeColor: Colors.white,
//                         activeTrackColor: AppColor.primaryColor,
//                         onChanged: (value) {},
//                       ),
//                     ),
//                   ),