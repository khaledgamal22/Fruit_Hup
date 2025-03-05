import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class ProfileInfoItem extends StatelessWidget {
  const ProfileInfoItem({
    super.key,
    required this.title,
    required this.trailing,
    this.onTap,
    required this.image,
  });

  final String title;
  final Widget trailing;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffF2F3F3),
          ),
        ),
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: Image.asset(
          image,
          color: AppColor.primaryColor,
        ),
        title: Text(
          title,
          style: AppStyle.styleSemibold13(context).copyWith(
            color: Color(0xff949D9E),
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
