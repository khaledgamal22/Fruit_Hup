import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/home/domain/entities/product_entity.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../uitilits/routing_name.dart';

class MayProductsListItem extends StatelessWidget {
  const MayProductsListItem({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        RoutingName.productDetails,
        arguments: productEntity,
      ),
      child: Container(
        width: 70,
        height: 70,
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: Color(0xffF3F5F7),
        ),
        child: Skeleton.ignore(
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: CachedNetworkImage(
                imageUrl: productEntity.image,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              )),
        ),
      ),
    );
  }
}
