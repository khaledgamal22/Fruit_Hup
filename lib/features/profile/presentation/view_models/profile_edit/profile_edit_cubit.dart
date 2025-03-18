import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/features/profile/domain/repos/profile_edit_repo.dart';

part 'profile_edit_state.dart';

class ProfileEditCubit extends Cubit<ProfileEditState> {
  ProfileEditCubit({required this.profileEditRepo})
      : super(ProfileEditInitial());
  final ProfileEditRepo profileEditRepo;
  static ProfileEditCubit get(context) =>
      BlocProvider.of<ProfileEditCubit>(context);
  TextEditingController nameController = TextEditingController();
  void editInformationProfile() {
    profileEditRepo.editInformationProfile(
      data: {'name': nameController.text},
    );
    emit(ProfileEditSuccess());
  }
}
