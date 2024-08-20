import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../../uitilits/app_colors.dart';
import '../../../../../uitilits/app_style.dart';
import '../../../../Auth/presentation/views/sign_in_view.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        size: 22,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'هل ترغب في تسجيل الخروج ؟',
                style: AppStyle.styleBold16(context).copyWith(
                  color: AppColor.headerTextColor,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(
                            context, SignInView.name);
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'تأكيد',
                            style: AppStyle.styleBold16(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: AppColor.primaryColor,
                            )),
                        child: Center(
                          child: Text(
                            'لا ارغب',
                            style: AppStyle.styleBold16(context).copyWith(
                              color: AppColor.primaryColor,
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
        ),
      ),
    );
  }
}
