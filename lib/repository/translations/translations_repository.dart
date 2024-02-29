import 'package:mlingo/data/models/translations/get_all_translations_model.dart';

abstract class TranslationsRepository {
  Future<GetAllTranslationsModel> getAllTranslations();
}