import 'package:converter/shared/constants.dart';
import 'package:converter/entities/unit/domain/unit.dart';
import 'package:converter/shared/default_dropdown.dart';
import 'package:converter/shared/dropdown_item_content.dart';
import 'package:converter/shared/input_field.dart';
import 'package:flutter/material.dart';

class ConvertItem extends StatelessWidget {
  const ConvertItem(
      {Key? key,
      required this.units,
      required this.selectedUnit,
      required this.unitAmountController,
      required this.onHandleUnit,
      required this.itemFocusNode})
      : super(key: key);

  final List<Unit> units;
  final Unit selectedUnit;
  final TextEditingController unitAmountController;
  final void Function(Unit) onHandleUnit;
  final FocusNode itemFocusNode;

  List<DropdownMenuItem<Unit>> _buildDropdownItems(BuildContext context) =>
      units
          .map((unit) => DropdownMenuItem(
              value: unit,
              child: DropdownItemContent(
                isSelected: unit == selectedUnit,
                value: unit.titleBuilder(context),
              )))
          .toList();

  List<String> _buildUnitTitles(BuildContext context) =>
      units.map((unit) => unit.titleBuilder(context)).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InputField(
          controller: unitAmountController,
          focusNode: itemFocusNode,
        ),
        defaultVerticalSpace,
        DefaultDropdown<Unit>(
            value: selectedUnit,
            itemValues: _buildDropdownItems(context),
            itemTitles: _buildUnitTitles(context),
            onChanged: (unit) => onHandleUnit(unit ?? selectedUnit))
      ],
    );
  }
}
