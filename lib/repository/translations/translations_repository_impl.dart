import 'package:mlingo/cache/cache.dart';
import 'package:mlingo/data/models/translations/get_all_translations_model.dart';
import 'package:mlingo/di/app_module.dart';
import 'package:mlingo/repository/translations/translations_repository.dart';
import 'package:mlingo/services/client_services.dart';
import 'package:mlingo/utils/constants/api_constants.dart';

class TranslationsRepositoryImpl implements TranslationsRepository {
  final Cache cache = getIt<Cache>();

  @override
  Future<GetAllTranslationsModel> getAllTranslations() async {
    try {
      final response = await ClientServices()
          .get("${ApiConstants.baseUrl}${ApiConstants.getAllTranslations}");
      return GetAllTranslationsModel.fromJson(response);
    } catch (error) {
      rethrow;
    }
  }
}
