import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/change_password_section.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/personal_info_section.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class InformationProfileViewBody extends StatelessWidget {
  const InformationProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          buildCustomAppBar(context, 'الملف الشخصي', null),
          SizedBox(height: 20),
          PersonalInfoSection(),
          SizedBox(height: 20),
          ChangePasswordSection(),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              title: 'حفظ التغييرات',
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
