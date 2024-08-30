import 'dart:async';

import 'package:fruits_ecommerce_app/core/services/firebase_auth_service.dart';

import '../../domain/repos/forget_pass_repo.dart';

class ForgetPassRepoImpl implements ForgetPassRepo {
  final FirebaseAuthService firebaseAuthService;

  ForgetPassRepoImpl({required this.firebaseAuthService});
  @override
  Future<String> phoneVerification(String phoneNumber, String smsCode) async {
    try {
      String verfiyId =
          await firebaseAuthService.phoneVerification(phoneNumber, smsCode);
      return verfiyId;
    } catch (e) {
      return e.toString();
    }
  }

  @override
  void sendOTP(String smsCode, String verificationId) {
    try {
      firebaseAuthService.sendCodeVerification(smsCode, verificationId);
    } catch (e) {}
  }
}
