import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/increase_decrease_amount.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xffF1F1F5),
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 16),
          Container(
            height: 90,
            width: 90,
            color: Color(0xffF3F5F7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/ef82/d0cd/ebee76c7b68ea88b37ea00a90933a728?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pha2V42DpjLxM5pmNfBZl3VxqE9A5xEN6DPQ6K3mDTGmXxN3DUXmb1v3TvnJB7E-UOkepTr2Y~qeBxZZyZH2lNiVnkyqJHKWyhs8fhMN4kOC2W~5L6FgT8paq81tghIzzV3~XEHy-u3C9rJOzEdklf38cxafwwv3vKlZyBr9i3lzFAipfpt665J2qZ-4VCsDZXJ9shZSaniTAULpzM1JrBx54QkhS7HxYj4SdyqGj5TEJLXKdJI74GgVCFnYCXdohxkJ9E36sZzIdqgFE393J6pJExuvrPoFvUQcWtKNsOUmXmrI4y7IESSDb1D7h-VCmxbKN9yn2fWwDO09uYz1hw__'),
            ),
          ),
          SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'فراولة',
                  style: AppStyle.styleBold13(context).copyWith(
                    color: AppColor.headerTextColor,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '3 كم',
                  style: AppStyle.styleRegular13(context).copyWith(
                    color: AppColor.priceColor,
                  ),
                ),
                SizedBox(height: 6),
                increaseDecreaseAmount(
                  Size: 30,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.delete_outline,
                  color: Color(0xff949D9E),
                ),
                Spacer(),
                Text(
                  '60 جنيه ',
                  style: AppStyle.styleBold16(context).copyWith(
                    color: AppColor.priceColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
