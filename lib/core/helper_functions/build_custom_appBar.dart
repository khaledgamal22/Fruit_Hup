import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_AppBar_icon.dart';

AppBar buildCustomAppBar(BuildContext context, String title, Widget? trailing) {
  return AppBar(
    backgroundColor: Colors.white,
    leadingWidth: 80,
    actions: [trailing ?? const SizedBox()],
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: CustomAppBarIcon(),
    ),
    title: Text(
      title,
      style: AppStyle.styleBold19(context),
    ),
    centerTitle: true,
  );
}
