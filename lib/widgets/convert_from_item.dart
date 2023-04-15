import 'package:converter/app/di.dart';
import 'package:converter/entities/unit/lib/units_config.dart';
import 'package:converter/features/convert/domain/convert_model.dart';
import 'package:converter/features/convert/ui/convert_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class ConvertFromItem extends StatefulWidget {
  const ConvertFromItem({Key? key}) : super(key: key);

  @override
  State<ConvertFromItem> createState() => _ConvertFromItemState();
}

class _ConvertFromItemState extends State<ConvertFromItem> {
  final ConvertModel _convertModel = locator<ConvertModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ConvertItem(
            itemFocusNode: _convertModel.fromFocusNode,
            units: unitsConfig[0].units,
            selectedUnit: _convertModel.uFrom,
            unitAmountController: _convertModel.fromController,
            onHandleUnit: _convertModel.handleUnitFrom));
  }
}
