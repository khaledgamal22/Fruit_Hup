import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/profile_edit/profile_edit_cubit.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../Auth/presentation/views/widgets/custom_text_form_field.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final profileEditCubit = ProfileEditCubit.get(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).personalinformation,
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            controller: profileEditCubit.nameController,
            icon: Icons.edit,
            hintText: getUser().name,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            isReadOnly: true,
            hintText: getUser().email,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
