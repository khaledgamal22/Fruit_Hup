import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_password_form_field.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
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
            S.of(context).changepassword,
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: S.of(context).currentpassword,
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: S.of(context).newpassword,
            keyboardType: TextInputType.visiblePassword,
          ),
          SizedBox(height: 10),
          CustomTextPasswordFormField(
            icon: Icons.remove_red_eye,
            hintText: S.of(context).confirmpassword,
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
