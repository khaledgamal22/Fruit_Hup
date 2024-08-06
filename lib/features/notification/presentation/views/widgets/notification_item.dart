import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

// ignore: must_be_immutable
class NotificationItem extends StatelessWidget {
  NotificationItem({
    super.key,
    this.isRead = false,
  });
  bool isRead;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: isRead ? Colors.white : Color(0xffEBF9F1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      Assets.imagesNotificationimage,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 10,
                    child: Text.rich(
                      maxLines: 2,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'خصم',
                            style: AppStyle.styleSemibold13(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                          TextSpan(
                            text: ' 50%',
                            style: AppStyle.styleSemibold16(context).copyWith(
                              color: Color(0xffEB5757),
                            ),
                          ),
                          TextSpan(
                            text: 'على اسعار الفواكه بمناسبة العيد',
                            style: AppStyle.styleSemibold13(context).copyWith(
                              color: AppColor.headerTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    '9 صباحا',
                    style: AppStyle.styleRegular13(context),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isRead == false,
            child: Positioned(
              right: 24,
              bottom: 75,
              child: Container(
                width: 8,
                height: 8,
                decoration: ShapeDecoration(
                  color: AppColor.primaryColor,
                  shape: CircleBorder(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
