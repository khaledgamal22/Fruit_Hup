import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/have_already_account.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/terms_and_condition_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

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
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 16,
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
              icon: Icons.remove_red_eye,
              keyboardType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: 24,
            ),
            TermsAndCondition(),
            SizedBox(
              height: 24,
            ),
            CustomButton(
              title: 'إنشاء حساب جديد',
            ),
            SizedBox(
              height: 35,
            ),
            HaveAlreadyAccount(),
          ],
        ),
      ),
    );
  }
}
