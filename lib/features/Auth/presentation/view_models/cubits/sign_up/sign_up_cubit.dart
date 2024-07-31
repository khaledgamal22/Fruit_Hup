import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_up_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpRepo) : super(SignUpInitial());

  final SignUpRepo signUpRepo;

  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignUpLoading());
    var response = await signUpRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );
    response.fold((failure) {
      emit(
        SignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (user) {
      emit(
        SignUpSuccess(user: user),
      );
    });
  }
}
