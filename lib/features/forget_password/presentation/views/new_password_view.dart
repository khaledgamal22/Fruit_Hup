import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/forget_password/presentation/views/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context, 'كلمة مرور جديدة', null),
      body: NewPasswordViewBody(),
    );
  }
}
