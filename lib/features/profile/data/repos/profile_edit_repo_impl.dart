import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_user.dart';
import 'package:fruits_ecommerce_app/features/profile/domain/repos/profile_edit_repo.dart';

import '../../../../core/services/database_service.dart';
import '../../../../uitilits/backend_endpoints.dart';

class ProfileEditRepoImpl implements ProfileEditRepo {
  final DatabaseServices databaseServices;

  ProfileEditRepoImpl({required this.databaseServices});
  @override
  Future<Either<String, void>> editInformationProfile(
      {required Map<String, dynamic> data}) async {
    try {
      return await databaseServices.updateData(
        path: BackendEndpoints.getUser,
        documentId: getUser().userId,
        data: data,
      );
    } catch (e) {
      return left('somthing went wrong');
    }
  }
}
