import 'package:flutter/material.dart';

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
              color: Color(0xffFFFFFF),
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
              'لاتوجد نتائج بحث',
              style: AppStyle.styleRegular13(context),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Assets.imagesNoresult),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'البحث',
                    style: AppStyle.styleBold16(context).copyWith(
                      color: Color(0xff616A6B),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'عفوًا... هذه المعلومات غير متوفرة للحظة',
                    style: AppStyle.styleRegular13(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
