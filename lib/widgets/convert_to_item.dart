import 'package:converter/app/di.dart';
import 'package:converter/entities/unit/lib/units_config.dart';
import 'package:converter/features/convert/domain/convert_model.dart';
import 'package:converter/features/convert/ui/convert_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ConvertToItem extends StatefulWidget {
  const ConvertToItem({Key? key}) : super(key: key);

  @override
  State<ConvertToItem> createState() => _ConvertToItemState();
}

class _ConvertToItemState extends State<ConvertToItem> {
  final ConvertModel _convertModel = locator<ConvertModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ConvertItem(
            itemFocusNode: _convertModel.toFocusNode,
            units: unitsConfig[0].units,
            selectedUnit: _convertModel.uTo,
            unitAmountController: _convertModel.toController,
            onHandleUnit: _convertModel.handleUnitTo
        )
    );
  }
}
