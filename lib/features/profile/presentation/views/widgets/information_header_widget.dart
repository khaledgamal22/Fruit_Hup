import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/uitilits/app_images.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class InformationHeaderWidget extends StatelessWidget {
  const InformationHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                Assets.imagesNoProfilePicture,
              ),
            ),
            Positioned(
              top: 60,
              left: 4,
              right: 4,
              child: Container(
                width: 32,
                height: 32,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color(0xffF9F9F9),
                    ),
                    child: Image.asset(
                      Assets.imagesCamera,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getUser().name,
              style: AppStyle.styleBold13(context).copyWith(
                color: const Color(0xff131F46),
              ),
            ),
            Text(
              getUser().email,
              style: AppStyle.styleRegular13(context).copyWith(
                color: const Color(0xff888FA0),
              ),
            )
          ],
        )
      ],
    );
  }
}
