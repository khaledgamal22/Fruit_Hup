import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/constant.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../uitilits/routing_name.dart';

class OnBoarddingPageviewItem extends StatelessWidget {
  const OnBoarddingPageviewItem(
      {super.key,
      required this.image,
      required this.backgroundimage,
      required this.subTitle,
      required this.title,
      required this.backgroundimageColor,
      required this.isZeroCurrentIndex});

  final String image, backgroundimage, subTitle;
  final Color backgroundimageColor;
  final Widget title;
  final bool isZeroCurrentIndex;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: height * 0.5,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Image.asset(
                  backgroundimage,
                  color: backgroundimageColor,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: -height * 0.5 + 270,
                top: 0,
                child: Image.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isZeroCurrentIndex,
                child: Positioned(
                  right: 12,
                  top: 12,
                  child: GestureDetector(
                    onTap: () {
                      getIt.get<SharedPref>().setBool(kIsOnBoardingSeen, true);
                      Navigator.pushReplacementNamed(
                          context, RoutingName.signIn);
                    },
                    child: Text(
                      S.of(context).skip,
                      style: AppStyle.styleRegular13(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subTitle,
            style: AppStyle.styleSemibold13(context).copyWith(
              color: const Color(0xff4E5556),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
