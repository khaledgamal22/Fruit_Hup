part of 'profile_edit_cubit.dart';

@immutable
sealed class ProfileEditState {}

final class ProfileEditInitial extends ProfileEditState {}

final class ProfileEditSuccess extends ProfileEditState {}
