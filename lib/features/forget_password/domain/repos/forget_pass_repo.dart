abstract class ForgetPassRepo {
  Future<String> phoneVerification(String phoneNumber, String smsCode);
  void sendOTP(String smsCode, String verificationId);
}
