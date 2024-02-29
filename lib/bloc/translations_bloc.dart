import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:mlingo/bloc/translations_events.dart';
import 'package:mlingo/bloc/translations_states.dart';
import 'package:mlingo/cache/cache.dart';
import 'package:mlingo/data/models/translations/get_all_translations_model.dart';
import 'package:mlingo/di/app_module.dart';

import 'package:mlingo/repository/translations/translations_repository.dart';

class TranslationsBloc extends Bloc<TranslationsEvents, TranslationsStates> {
  final TranslationsRepository _translationsRepository = getIt<TranslationsRepository>();
  final Cache cache = getIt<Cache>();

  TranslationsStates get initialState => InitialiseTranslations();

  TranslationsBloc() : super(InitialiseTranslations()) {
    on<GetAllTranslations>(_getAllTranslations);
  }

  FutureOr<void> _getAllTranslations(
      GetAllTranslations event, Emitter<TranslationsStates> emit) async {
    emit(FetchingAllTranslations());
    try {
      GetAllTranslationsModel getAllTranslationsModel =
      await _translationsRepository.getAllTranslations();
      if (getAllTranslationsModel.status == 200) {
        emit(TranslationsFetched(getAllTranslationsModel: getAllTranslationsModel));
      } else {
        emit(FetchingTranslationsFailed(errorMessage: getAllTranslationsModel.message));
      }
    } catch (e) {
      emit(FetchingTranslationsFailed(errorMessage: e.toString()));
    }
  }

}
