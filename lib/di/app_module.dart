import 'package:get_it/get_it.dart';
import 'package:mlingo/cache/cache.dart';
import 'package:mlingo/repository/translations/translations_repository_impl.dart';
import 'package:mlingo/repository/translations/translations_repository.dart';
import 'package:mlingo/services/client_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

configurableDependencies() {
  getIt.registerLazySingleton<ClientServices>(() => ClientServices());

  getIt.registerLazySingletonAsync<SharedPreferences>(
          () async => await SharedPreferences.getInstance());
  getIt.registerLazySingleton<Cache>(
          () => Cache(sharedPreferences: getIt<SharedPreferences>()));
  getIt.registerLazySingleton<TranslationsRepository>(
          () => TranslationsRepositoryImpl());
}
