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
            'https://s3-alpha-sig.figma.com/img/ef82/d0cd/ebee76c7b68ea88b37ea00a90933a728?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pha2V42DpjLxM5pmNfBZl3VxqE9A5xEN6DPQ6K3mDTGmXxN3DUXmb1v3TvnJB7E-UOkepTr2Y~qeBxZZyZH2lNiVnkyqJHKWyhs8fhMN4kOC2W~5L6FgT8paq81tghIzzV3~XEHy-u3C9rJOzEdklf38cxafwwv3vKlZyBr9i3lzFAipfpt665J2qZ-4VCsDZXJ9shZSaniTAULpzM1JrBx54QkhS7HxYj4SdyqGj5TEJLXKdJI74GgVCFnYCXdohxkJ9E36sZzIdqgFE393J6pJExuvrPoFvUQcWtKNsOUmXmrI4y7IESSDb1D7h-VCmxbKN9yn2fWwDO09uYz1hw__'),
      ),
    );
  }
}
