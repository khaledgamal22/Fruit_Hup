import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_edit_state.dart';

class ProfileEditCubit extends Cubit<ProfileEditState> {
  ProfileEditCubit() : super(ProfileEditInitial());
  static ProfileEditCubit get(context) =>
      BlocProvider.of<ProfileEditCubit>(context);
  TextEditingController nameController = TextEditingController();
}
