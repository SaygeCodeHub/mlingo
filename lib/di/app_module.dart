import 'package:get_it/get_it.dart';
import 'package:mlingo/repository/dashboard/dashboard_repository.dart';
import 'package:mlingo/repository/dashboard/dashboard_repository_impl.dart';
import 'package:mlingo/repository/languages/get_languages_repository.dart';
import 'package:mlingo/repository/languages/get_languages_repository_impl.dart';
import 'package:mlingo/repository/translation_form/translation_form_repository.dart';
import 'package:mlingo/repository/translation_form/translation_form_repository_impl.dart';
import 'package:mlingo/repository/translations/translations_repository_impl.dart';
import 'package:mlingo/repository/translations/translations_repository.dart';
import 'package:mlingo/services/client_services.dart';

final getIt = GetIt.instance;

configurableDependencies() {
  getIt.registerLazySingleton<ClientServices>(() => ClientServices());

  getIt.registerLazySingleton<DashboardRepository>(
      () => DashboardRepositoryImpl());
  getIt.registerLazySingleton<TranslationFormRepository>(
      () => TranslationFormRepositoryImpl());
  getIt.registerLazySingleton<GetLanguagesRepository>(
      () => GetLanguagesRepositoryImpl());
  getIt.registerLazySingleton<TranslationsRepository>(
      () => TranslationsRepositoryImpl());
}
