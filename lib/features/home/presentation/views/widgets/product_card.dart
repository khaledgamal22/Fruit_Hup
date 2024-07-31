import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF3F5F7),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                ),
              ],
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/ef82/d0cd/ebee76c7b68ea88b37ea00a90933a728?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pha2V42DpjLxM5pmNfBZl3VxqE9A5xEN6DPQ6K3mDTGmXxN3DUXmb1v3TvnJB7E-UOkepTr2Y~qeBxZZyZH2lNiVnkyqJHKWyhs8fhMN4kOC2W~5L6FgT8paq81tghIzzV3~XEHy-u3C9rJOzEdklf38cxafwwv3vKlZyBr9i3lzFAipfpt665J2qZ-4VCsDZXJ9shZSaniTAULpzM1JrBx54QkhS7HxYj4SdyqGj5TEJLXKdJI74GgVCFnYCXdohxkJ9E36sZzIdqgFE393J6pJExuvrPoFvUQcWtKNsOUmXmrI4y7IESSDb1D7h-VCmxbKN9yn2fWwDO09uYz1hw__',
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(height: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'فراولة',
                      style: AppStyle.styleSemibold13(context)
                          .copyWith(color: AppColor.headerTextColor),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '20 جنيه',
                            style: AppStyle.styleBold13(context).copyWith(
                              color: AppColor.priceColor,
                            ),
                          ),
                          TextSpan(
                            text: ' /كيلو',
                            style: AppStyle.styleSemibold13(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 36,
                  height: 36,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 26,
                      color: Colors.white,
                    ),
                    backgroundColor: AppColor.primaryColor,
                    elevation: 0,
                    shape: CircleBorder(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
