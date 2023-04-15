import 'package:converter/entities/unit/domain/unit.dart';

double convertUnits(Unit from, Unit to, double amount) => to.fromMainUnit(from.toMainUnit(amount));