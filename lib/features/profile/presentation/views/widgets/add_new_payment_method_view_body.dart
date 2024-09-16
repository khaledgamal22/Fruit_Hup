import 'package:flutter/material.dart';
import 'package:fruits_ecommerce_app/features/profile/presentation/views/widgets/check_type_credit.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

import '../../../../../core/helper_functions/build_custom_appBar.dart';
import '../../../../Auth/presentation/views/widgets/custom_text_form_field.dart';

class AddNewPaymentMethodViewBody extends StatefulWidget {
  const AddNewPaymentMethodViewBody({super.key});

  @override
  State<AddNewPaymentMethodViewBody> createState() =>
      _AddNewPaymentMethodViewBodyState();
}

class _AddNewPaymentMethodViewBodyState
    extends State<AddNewPaymentMethodViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        buildCustomAppBar(context, 'اضافه بطاقه جديده', null),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomTextFormField(
                    hintText: 'اسم حامل البطاقه',
                    keyboardType: TextInputType.name),
                SizedBox(height: 10),
                CustomTextFormField(
                    hintText: 'رقم البطاقه',
                    keyboardType: TextInputType.number),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'تاريخ الانتهاء',
                          keyboardType: TextInputType.datetime),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomTextFormField(
                          hintText: 'CVV', keyboardType: TextInputType.number),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CheckTypeCredit(
                  onchange: (value) {
                    isChecked = value;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: CustomButton(
                  title: 'أضف وسيلة دفع جديده',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
