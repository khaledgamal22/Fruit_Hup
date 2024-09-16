import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../uitilits/app_images.dart';
import '../../../../../uitilits/widgets/custom_button.dart';
import '../../../../Auth/presentation/views/widgets/custom_text_form_field.dart';
import '../../../../profile/presentation/views/widgets/check_type_credit.dart';

class PayViewBody extends StatefulWidget {
  const PayViewBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<PayViewBody> createState() => _PayViewBodyState();
}

class _PayViewBodyState extends State<PayViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أختار طريقه الدفع المناسبه :',
              style: AppStyle.styleBold13(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'من فضلك اختر طريقه الدفع المناسبه لك.',
              style: AppStyle.styleRegular13(context).copyWith(
                color: Color(0xff616A6B),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color(0xffD6DCE5),
                      ),
                    ),
                    child: Image.asset(Assets.imagesPay),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color(0xffD6DCE5),
                      ),
                    ),
                    child: Image.asset(Assets.imagesPaypal),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color(0xffD6DCE5),
                      ),
                    ),
                    child: Image.asset(Assets.imagesMastercard),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xff1434CB),
                      border: Border.all(
                        color: Color(0xffD6DCE5),
                      ),
                    ),
                    child: Image.asset(Assets.imagesVisa),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFormField(
                hintText: 'اسم حامل البطاقه', keyboardType: TextInputType.name),
            SizedBox(height: 10),
            CustomTextFormField(
                hintText: 'رقم البطاقه', keyboardType: TextInputType.number),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                      hintText: 'تاريخ الانتهاء',
                      keyboardType: TextInputType.datetime),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomTextFormField(
                      hintText: 'CVV', keyboardType: TextInputType.number),
                ),
              ],
            ),
            SizedBox(height: 15),
            CheckTypeCredit(
              onchange: (value) {
                isChecked = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 100,
            ),
            CustomButton(
              title: 'تأكيد & استمرار',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  widget.pageController.animateToPage(
                    widget.pageController.page!.round() + 1,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeIn,
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
