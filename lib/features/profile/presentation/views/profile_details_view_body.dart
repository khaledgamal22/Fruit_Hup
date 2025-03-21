import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/build_dialog.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/information_header_widget.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/profile_info_list.dart';
import 'package:fruits_ecommerce_app/generated/l10n.dart';
import 'package:fruits_ecommerce_app/uitilits/app_colors.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../uitilits/routing_name.dart';

class ProfileDetailsViewBody extends StatelessWidget {
  const ProfileDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              S.of(context).myprofile,
              style: AppStyle.styleBold19(context),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: InformationHeaderWidget(),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: ProfileInFoList(),
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              buildDialog(context, title: S.of(context).wantlogout, onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, RoutingName.signIn);
              });
            },
            child: Container(
              width: double.infinity,
              height: 45,
              color: const Color(0xffEBF9F1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    S.of(context).logout,
                    style: AppStyle.styleSemibold13(context).copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child:
                          getIt.get<SharedPref>().getCurrentLanguage() == 'ar'
                              ? Transform.rotate(
                                  angle: 180 * 3.14 / 180,
                                  child: const Icon(
                                    Icons.logout,
                                    size: 22,
                                    color: Color(0xff53B175),
                                  ),
                                )
                              : const Icon(
                                  Icons.logout,
                                  size: 22,
                                  color: Color(0xff53B175),
                                ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
