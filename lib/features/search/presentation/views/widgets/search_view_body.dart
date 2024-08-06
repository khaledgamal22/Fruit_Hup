import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_custom_appBar.dart';
import 'package:fruits_ecommerce_app/features/home/presentation/views/widgets/search_text_filed.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_notification_icon.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              buildCustomAppBar(
                context,
                'البحث',
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomNotificationIcon(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchTextField(),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RecentResultsSearch(),
          ),
        )
      ],
    );
  }
}

class RecentResultsSearch extends StatelessWidget {
  const RecentResultsSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'عمليات البحث الأخيرة',
              style: AppStyle.styleSemibold13(context).copyWith(
                color: AppColor.headerTextColor,
              ),
            ),
            Spacer(),
            Text(
              'حذف الكل',
              style: AppStyle.styleRegular13(context),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ResultRecentList(),
      ],
    );
  }
}

class RecentResultItem extends StatelessWidget {
  const RecentResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.schedule,
          color: Color(0xff949D9E),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'فراولة',
          style: AppStyle.styleRegular16(context).copyWith(
            color: AppColor.headerTextColor,
          ),
        ),
        Spacer(),
        Icon(
          Icons.close,
          color: Color(0xff0A0A0A),
        ),
      ],
    );
  }
}

class ResultRecentList extends StatelessWidget {
  const ResultRecentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: RecentResultItem(),
        );
      },
    );
  }
}
