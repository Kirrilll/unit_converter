import 'package:converter/entities/unit/domain/unit.dart';
import 'package:flutter/cupertino.dart';

class UnitCategory {
  final int id;
  final String Function(BuildContext) titleBuilder;
  final Unit main;
  final List<Unit> units;

  UnitCategory({
    required this.id,
    required this.titleBuilder,
    required this.main,
    required this.units
  });
}