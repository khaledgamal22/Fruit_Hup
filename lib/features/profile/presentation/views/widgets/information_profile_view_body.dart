import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/show_snack_bar_message.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/view_models/profile_edit/profile_edit_cubit.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/change_password_section.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/personal_info_section.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class InformationProfileViewBody extends StatelessWidget {
  const InformationProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileEditCubit, ProfileEditState>(
      listener: (context, state) {
        if (state is ProfileEditSuccess) {
          showSnackBarMessage(context, S.of(context).savechangesdone);
        }
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            buildCustomAppBar(context, S.of(context).personalprofile, null),
            SizedBox(height: 20),
            PersonalInfoSection(),
            SizedBox(height: 20),
            ChangePasswordSection(),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomButton(
                title: S.of(context).savechanges,
                onTap: () {
                  context.read<ProfileEditCubit>().editInformationProfile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
