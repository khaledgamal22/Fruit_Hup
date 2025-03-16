import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../uitilits/routing_name.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).donthaveaccount,
          style: AppStyle.styleSemibold16(context).copyWith(
            color: const Color(0xff949D9E),
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              RoutingName.signUp,
            );
          },
          child: Text(
            S.of(context).signup,
            style: AppStyle.styleSemibold16(context).copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
