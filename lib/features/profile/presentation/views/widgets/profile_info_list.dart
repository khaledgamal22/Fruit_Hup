import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/profile_info_item.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/switch_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/routing_name.dart';

class ProfileInFoList extends StatelessWidget {
  const ProfileInFoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileInfoItem(
          onTap: () {
            Navigator.pushNamed(context, RoutingName.informationProfile);
          },
          image: Assets.imagesUser,
          title: 'الملف الشخصي',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          onTap: () {
            Navigator.pushNamed(context, RoutingName.myOrders);
          },
          image: Assets.imagesBox,
          title: 'طلباتي',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesEmptyWallet,
          title: 'المدفوعات',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesHeart,
          title: 'المفضلة',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesNotification,
          title: 'الاشعارات',
          trailing: SwitchButton(),
        ),
        ProfileInfoItem(
          image: Assets.imagesGlobal,
          title: 'اللغة',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesMagicpen,
          title: 'الوضع',
          trailing: SwitchButton(),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'المساعده',
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
        ),
        SizedBox(height: 10),
        ProfileInfoItem(
          onTap: () {
            Navigator.pushNamed(context, RoutingName.aboutUs);
          },
          image: Assets.imagesInfoCircle,
          title: 'من نحن',
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
      ],
    );
  }
}
