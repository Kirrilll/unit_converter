import 'package:converter/shared/default_dropdown.dart';
import 'package:converter/shared/dropdown_item_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../app/di.dart';
import '../processes/localization/localization_model.dart';

class LocalizationDropdown extends StatefulWidget {
  const LocalizationDropdown({Key? key}) : super(key: key);

  @override
  State<LocalizationDropdown> createState() => _LocalizationDropdownState();
}

class _LocalizationDropdownState extends State<LocalizationDropdown> {
  final _localizationModel = locator<LocalizationModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => DefaultDropdown(
            value: _localizationModel.locale,
            itemTitles: _localizationModel.supportedLocales.map((loc) => loc.languageCode).toList(),
            itemValues: _localizationModel.supportedLocales.map((sLocale) => DropdownMenuItem(
                value: sLocale,
                child: DropdownItemContent(
                    value: sLocale.toString() ?? '',
                    isSelected: sLocale.languageCode == _localizationModel.locale.languageCode,
                ),
            )).toList(),
            onChanged: (locale) => _localizationModel.changeLocale(locale?.languageCode ?? _localizationModel.locale.languageCode)
        )
    );
  }
}
