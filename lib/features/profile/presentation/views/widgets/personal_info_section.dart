import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../Auth/presentation/views/widgets/custom_text_form_field.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'المعلومات الشخصيه',
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            icon: Icons.edit,
            hintText: getUser().name,
            keyboardType: TextInputType.name,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            icon: Icons.edit,
            hintText: getUser().email,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
