import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fruits_ecommerce_app/features/forget_password/presentation/view_models/cubit/forget_pass_cubit.dart';
import 'package:fruits_ecommerce_app/uitilits/app_style.dart';
import 'package:fruits_ecommerce_app/uitilits/routing_name.dart';
import 'package:fruits_ecommerce_app/uitilits/widgets/custom_button.dart';

class OtpVerficationViewBody extends StatefulWidget {
  const OtpVerficationViewBody(
      {super.key, required this.phoneNumber, required this.verfiyId});
  final String phoneNumber;
  final String verfiyId;

  @override
  State<OtpVerficationViewBody> createState() => _OtpVerficationViewBodyState();
}

class _OtpVerficationViewBodyState extends State<OtpVerficationViewBody> {
  var smsCodeDigit1 = '';
  var smsCodeDigit2 = '';
  var smsCodeDigit3 = '';
  var smsCodeDigit4 = '';
  var smsCodeDigit5 = '';
  var smsCodeDigit6 = '';

  @override
  void initState() {
    context.read<ForgetPassCubit>().phoneVerification(
        widget.phoneNumber,
        smsCodeDigit1 +
            smsCodeDigit2 +
            smsCodeDigit3 +
            smsCodeDigit4 +
            smsCodeDigit5 +
            smsCodeDigit6);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit1 = value;
                  });
                },
              ),
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit2 = value;
                  });
                },
              ),
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit3 = value;
                  });
                },
              ),
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit4 = value;
                  });
                },
              ),
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit5 = value;
                  });
                },
              ),
              OtpTextField(
                numberOfFields: 1,
                filled: true,
                fillColor: Color(0xffF9FAFA),
                fieldHeight: 60,
                fieldWidth: 50,
                showFieldAsBox: true,
                focusedBorderColor: Color(0xffF4A91F),
                enabledBorderColor: Color(0xffE6E9EA),
                onCodeChanged: (value) {
                  setState(() {
                    smsCodeDigit6 = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 50),
          CustomButton(
            title: 'تحقق من الرمز',
            onTap: () {
              context.read<ForgetPassCubit>().sendOTP(
                    smsCodeDigit1 +
                        smsCodeDigit2 +
                        smsCodeDigit3 +
                        smsCodeDigit4 +
                        smsCodeDigit5 +
                        smsCodeDigit6,
                    widget.verfiyId,
                  );
              Navigator.pushReplacementNamed(context, RoutingName.newPass);
            },
          ),
          SizedBox(height: 30),
          Text(
            'إعادة إرسال الرمز',
            style: AppStyle.styleSemibold16(context).copyWith(
              color: Color(0xff2D9F5D),
            ),
          ),
        ],
      ),
    );
  }
}
