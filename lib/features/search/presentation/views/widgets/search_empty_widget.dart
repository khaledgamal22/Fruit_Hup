import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';

import '../../../../../uitilits/app_images.dart';
import '../../../../../uitilits/app_style.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 5,
                  spreadRadius: 3,
                  offset: Offset.fromDirection(-10, 5),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Text(
              S.of(context).notresultsearch,
              style: AppStyle.styleRegular13(context),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Assets.imagesNoresult),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  S.of(context).search,
                  style: AppStyle.styleBold16(context).copyWith(
                    color: const Color(0xff616A6B),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).emptysearch,
                  style: AppStyle.styleRegular13(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
