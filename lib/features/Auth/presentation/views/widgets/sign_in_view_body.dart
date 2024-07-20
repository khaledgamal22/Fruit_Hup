import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_sign_with_Button.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/dont_have_account.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            CustomTextFormField(
              hintText: 'البريد الاكترونى',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              icon: Icons.remove_red_eye,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppStyle.styleSemibold13(context).copyWith(
                    color: Color(0xff2D9F5D),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              title: 'تسجيل دخول',
            ),
            SizedBox(
              height: 35,
            ),
            DontHaveAccountWidget(),
            SizedBox(
              height: 30,
            ),
            CustomDivider(),
            SizedBox(
              height: 24,
            ),
            CustomSignWithButton(
              title: 'تسجيل بواسطة جوجل',
              icon: Assets.imagesGoogle,
            ),
            SizedBox(
              height: 16,
            ),
            CustomSignWithButton(
              title: 'تسجيل بواسطة أبل',
              icon: Assets.imagesApple,
            ),
            SizedBox(
              height: 16,
            ),
            CustomSignWithButton(
              title: 'تسجيل بواسطة فيسبوك',
              icon: Assets.imagesFacbook,
            ),
          ],
        ),
      ),
    );
  }
}
