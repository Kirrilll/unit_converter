import 'package:converter/entities/unit/domain/unit_category.dart';
import 'package:converter/entities/unit/lib/units.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


final List<UnitCategory> unitsConfig = [
  UnitCategory(
      id: 0,
      titleBuilder: (context) => AppLocalizations.of(context)?.length_category_title ?? 'Длина',
      main: metresUnit,
      units: [metresUnit, kilometresUnit, feetUnit, inchesUnit]
  )
];