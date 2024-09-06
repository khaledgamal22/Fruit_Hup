import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_password_form_field.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تغيير كلمة المرور',
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: 'كلمة المرور الحالي',
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: 'كلمة المرور الجديدة',
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: 'تاكيد كلمة المرور الجديدة',
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
