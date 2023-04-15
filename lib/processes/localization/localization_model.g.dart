// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocalizationModel on LocalizationModelBase, Store {
  late final _$_localeAtom =
      Atom(name: 'LocalizationModelBase._locale', context: context);

  @override
  Locale get _locale {
    _$_localeAtom.reportRead();
    return super._locale;
  }

  @override
  set _locale(Locale value) {
    _$_localeAtom.reportWrite(value, super._locale, () {
      super._locale = value;
    });
  }

  late final _$LocalizationModelBaseActionController =
      ActionController(name: 'LocalizationModelBase', context: context);

  @override
  dynamic changeLocale(String languageCode) {
    final _$actionInfo = _$LocalizationModelBaseActionController.startAction(
        name: 'LocalizationModelBase.changeLocale');
    try {
      return super.changeLocale(languageCode);
    } finally {
      _$LocalizationModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
