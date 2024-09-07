import 'package:flutter/material.dart';

class MayProductsListItem extends StatelessWidget {
  const MayProductsListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: ShapeDecoration(
        shape: CircleBorder(),
        color: Color(0xffF3F5F7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.network(
            'https://s3-alpha-sig.figma.com/img/d8be/3d59/ab143bf1dd908919438d5e148d1cb383?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FDZ7Hjr6Vf7H3VlwTadr-gcUejK0er~o94-ViM4Zmega9439wOpHn4fxt827oFOe9HfmZ3yOFOO9t8gY1wkSbQlhepnzta6Z~sH3fT7e8Fnw1251OOlgL0Cfp0hHeb2rZxs7fPhYV4JKYP5L7bP6yqI93YDXzKYYDDEMXXJlnp9larK8dAld8D1IQnpfx16E678U~qGBKdhWVkAeSeME-FV-7MnYRDP2hfG9DCMtEv7rE6oaOdqUMjncD16UdKygyHfOJ4uXEdMG3OdbKJzI4FAQCUU7e4R8U7p7rJFgVyl7FqS9pAxMOlMzgNA7RGfZ7inRdd3ZF6Y43bPDWmOJgw__'),
      ),
    );
  }
}
