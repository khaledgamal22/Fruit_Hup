import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce_app/features/Auth/domain/repos/sign_in_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.signInRepo) : super(SignInInitial());

  final SignInRepo signInRepo;

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(
      SignInLoading(),
    );
    var response = await signInRepo.loginWithEmailAndPassWord(
      email: email,
      password: password,
    );
    response.fold(
      (failure) {
        emit(
          SignInFailure(errorMessage: failure.errorMessage),
        );
      },
      (user) {
        emit(
          SignInSuccess(user: user),
        );
      },
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    var respons = await signInRepo.signInWithGoogle();

    respons.fold(
      (failure) {
        emit(
          SignInFailure(errorMessage: failure.errorMessage),
        );
      },
      (user) {
        emit(
          SignInSuccess(user: user),
        );
      },
    );
  }

  Future<void> signInWithFacebook() async {
    emit(SignInLoading());
    var response = await signInRepo.signInWithFacebook();
    response.fold((failure) {
      emit(
        SignInFailure(errorMessage: failure.errorMessage),
      );
    }, (user) {
      emit(
        SignInSuccess(user: user),
      );
    });
  }
}
