import 'package:flutter/material.dart';

import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/information_profile_view_body.dart';

class InformationProfileView extends StatelessWidget {
  const InformationProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InformationProfileViewBody(),
    );
  }
}
