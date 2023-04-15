import 'package:flutter/cupertino.dart';

class Unit {
  final int id;
  final String Function(BuildContext) titleBuilder;
  final double Function(double) toMainUnit;
  final double Function(double) fromMainUnit;

  const Unit(
      {required this.id,
      required this.titleBuilder,
      required this.fromMainUnit,
      required this.toMainUnit});

  factory Unit.byUniformConverter(
          {required int id,
          required String Function(BuildContext) titleBuilder,
          required double Function(double) uniformConverter}) =>
      Unit(
          id: id,
          titleBuilder: titleBuilder,
          fromMainUnit: uniformConverter,
          toMainUnit: uniformConverter);
}
