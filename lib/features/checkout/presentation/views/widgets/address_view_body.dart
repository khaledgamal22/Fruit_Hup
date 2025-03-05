import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/switch_button.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';

import '../../../../../uitilits/widgets/custom_button.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'العنوان',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'المدينه',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'رقم الطابق , رقم الشقه ..',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Transform.rotate(
                    angle: 180 * 3.14 / 180,
                    child: SwitchButton(),
                  ),
                  Text(
                    'حفظ العنوان',
                    style: AppStyle.styleSemibold13(context).copyWith(
                      color: const Color(0xff949D9E),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'التالي',
            onTap: () {
              pageController.animateToPage(
                pageController.page!.round() + 1,
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeIn,
              );
            },
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
