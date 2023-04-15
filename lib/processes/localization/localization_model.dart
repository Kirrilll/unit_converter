import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:mobx/mobx.dart';

part 'localization_model.g.dart';

class LocalizationModel = LocalizationModelBase with _$LocalizationModel;

abstract class LocalizationModelBase with Store {
  @observable
  Locale _locale = const Locale('ru');

  Locale get locale => _locale;
  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
  List<LocalizationsDelegate<dynamic>> get localizationsDelegates => AppLocalizations.localizationsDelegates;

  @action
  changeLocale(String languageCode) {
    _locale = Locale(languageCode);
  }

}