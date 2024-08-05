import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/information_header_widget.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/profile_info_list.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class ProfileDetailsViewBody extends StatelessWidget {
  const ProfileDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'حسابي',
            style: AppStyle.styleBold19(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: InformationHeaderWidget(),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ProfileInFoList(),
        ),
        SizedBox(height: 25),
        Container(
          width: double.infinity,
          height: 45,
          color: Color(0xffEBF9F1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Text(
                'تسجيل الخروج',
                style: AppStyle.styleSemibold13(context).copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Transform.rotate(
                    angle: 180 * 3.14 / 180,
                    child: Icon(
                      Icons.logout,
                      size: 22,
                      color: Color(0xff53B175),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
