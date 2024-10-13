import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/review_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../uitilits/app_style.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({super.key, required this.reviewEntity});
  final ReviewEntity reviewEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  reviewEntity.name,
                  style: AppStyle.styleSemibold16(context),
                ),
                Text(
                  reviewEntity.date,
                  style: AppStyle.styleRegular13(context),
                ),
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(reviewEntity.image),
                  radius: 30,
                ),
                Positioned(
                  bottom: 8,
                  left: 45,
                  child: Skeleton.ignore(
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: ShapeDecoration(
                        shadows: [
                          BoxShadow(
                            color: Color(0xffFFC529).withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: Color(0xffFFC529),
                      ),
                      child: Center(
                        child: Text(
                          (reviewEntity.rating.toDouble()).toString(),
                          style: AppStyle.styleSemibold11(context).copyWith(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          reviewEntity.comment,
          style: AppStyle.styleRegular13(context),
        ),
      ],
    );
  }
}
