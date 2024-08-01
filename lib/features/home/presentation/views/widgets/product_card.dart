import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/product_details_view.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/custom_floating_add_negative_button.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/price_per_amount_widget.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsView.name,
            arguments:
                'https://s3-alpha-sig.figma.com/img/ef82/d0cd/ebee76c7b68ea88b37ea00a90933a728?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pha2V42DpjLxM5pmNfBZl3VxqE9A5xEN6DPQ6K3mDTGmXxN3DUXmb1v3TvnJB7E-UOkepTr2Y~qeBxZZyZH2lNiVnkyqJHKWyhs8fhMN4kOC2W~5L6FgT8paq81tghIzzV3~XEHy-u3C9rJOzEdklf38cxafwwv3vKlZyBr9i3lzFAipfpt665J2qZ-4VCsDZXJ9shZSaniTAULpzM1JrBx54QkhS7HxYj4SdyqGj5TEJLXKdJI74GgVCFnYCXdohxkJ9E36sZzIdqgFE393J6pJExuvrPoFvUQcWtKNsOUmXmrI4y7IESSDb1D7h-VCmxbKN9yn2fWwDO09uYz1hw__');
      },
      child: Container(
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
                      PricePerAmountWidget(),
                    ],
                  ),
                  CustomFloatingAddButton(
                    width: 36,
                    height: 36,
                    valueChange: (value) {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
