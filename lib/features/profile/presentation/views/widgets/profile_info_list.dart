import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/profile_info_item.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/switch_button.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
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
          onTap: () =>
              Navigator.pushNamed(context, RoutingName.informationProfile),
          image: Assets.imagesUser,
          title: S.of(context).personalprofile,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          onTap: () => Navigator.pushNamed(context, RoutingName.myOrders),
          image: Assets.imagesBox,
          title: S.of(context).myorders,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          onTap: () => Navigator.pushNamed(context, RoutingName.payments),
          image: Assets.imagesEmptyWallet,
          title: S.of(context).payments,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          onTap: () =>
              Navigator.pushNamed(context, RoutingName.favoriteProducts),
          image: Assets.imagesHeart,
          title: S.of(context).Favorites,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesNotification,
          title: S.of(context).notifications,
          trailing: SwitchButton(),
        ),
        ProfileInfoItem(
          image: Assets.imagesGlobal,
          title: S.of(context).language,
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
        ProfileInfoItem(
          image: Assets.imagesMagicpen,
          title: S.of(context).theme,
          trailing: SwitchButton(),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            S.of(context).help,
            style: AppStyle.styleSemibold13(context).copyWith(
              color: AppColor.headerTextColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ProfileInfoItem(
          onTap: () => Navigator.pushNamed(context, RoutingName.aboutUs),
          image: Assets.imagesInfoCircle,
          title: S.of(context).aboutus,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ),
      ],
    );
  }
}
