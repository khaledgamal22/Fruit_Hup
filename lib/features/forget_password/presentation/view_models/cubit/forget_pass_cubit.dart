import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/forget_password/domain/repos/forget_pass_repo.dart';
import 'package:meta/meta.dart';

part 'forget_pass_state.dart';

class ForgetPassCubit extends Cubit<ForgetPassState> {
  ForgetPassCubit(this.forgetPassRepo) : super(ForgetPassInitial());

  final ForgetPassRepo forgetPassRepo;

  Future<void> phoneVerification(String phoneNumber, String smsCode) async {
    emit(ForgetPassLoading());
    try {
      String verfiyId =
          await forgetPassRepo.phoneVerification(phoneNumber, smsCode);
      emit(ForgetPassSuccsess(verificationId: verfiyId));
    } catch (e) {
      emit(ForgetPassFailure());
    }
  }

  void sendOTP(String smsCode, String verificationId) {
    forgetPassRepo.sendOTP(smsCode, verificationId);
  }
}
