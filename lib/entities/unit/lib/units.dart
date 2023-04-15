import 'package:converter/entities/unit/domain/unit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final metresUnit =  Unit(
    id: 0,
    titleBuilder: (context) => AppLocalizations.of(context)?.metres_title ?? 'метры',
    fromMainUnit: (amount) => amount,
    toMainUnit: (amount) => amount
);

final kilometresUnit = Unit(
    id: 1,
    titleBuilder: (context) => AppLocalizations.of(context)?.kilometers_title ?? 'километры',
    toMainUnit: (amount) => amount * 1000,
    fromMainUnit: (amount) => amount / 1000
);

final feetUnit = Unit(
    id: 2,
    titleBuilder: (context) => AppLocalizations.of(context)?.feet_title ?? 'футы',
    toMainUnit: (amount) => amount / 3.281,
    fromMainUnit: (amount) => amount * 3.281
);

final inchesUnit = Unit(
    id: 3,
    titleBuilder: (context) => AppLocalizations.of(context)?.inches_title ?? 'дюймы',
    fromMainUnit: (amount) => amount * 39.37,
    toMainUnit: (amount) => amount / 39.37
);

