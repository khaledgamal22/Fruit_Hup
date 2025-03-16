import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerce_app/core/helper_functions/get_it_func.dart';
import 'package:fruits_ecommerce_app/core/services/shared_preference_singleton.dart';
import 'package:meta/meta.dart';

part 'change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit() : super(ChangeLanguageInitial());
  static ChangeLanguageCubit get(context) => BlocProvider.of(context);
  String arabic = 'ar';
  String english = 'en';
  void changeLanguage({required String lang}) async {
    await getIt.get<SharedPref>().setCurrentLanguage(lang: lang);
    emit(ChangeLanguageSuccess());
  }
}
