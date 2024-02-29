import 'package:mlingo/data/models/translations/get_all_translations_model.dart';

abstract class TranslationsStates {}

class InitialiseTranslations extends TranslationsStates {}

class FetchingAllTranslations extends TranslationsStates {}

class TranslationsFetched extends TranslationsStates {
  final GetAllTranslationsModel getAllTranslationsModel;

  TranslationsFetched({required this.getAllTranslationsModel});
}

class FetchingTranslationsFailed extends TranslationsStates {
  final String errorMessage;

  FetchingTranslationsFailed({required this.errorMessage});
}
