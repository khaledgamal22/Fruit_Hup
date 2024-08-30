part of 'forget_pass_cubit.dart';

@immutable
sealed class ForgetPassState {}

final class ForgetPassInitial extends ForgetPassState {}

final class ForgetPassSuccsess extends ForgetPassState {
  final String verificationId;
  ForgetPassSuccsess({required this.verificationId});
}

final class ForgetPassLoading extends ForgetPassState {}

final class ForgetPassFailure extends ForgetPassState {}
