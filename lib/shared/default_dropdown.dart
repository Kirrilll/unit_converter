import 'package:converter/app/colors.dart';
import 'package:converter/shared/constants.dart';
import 'package:converter/shared/dropdown_item_content.dart';
import 'package:flutter/material.dart';

class DefaultDropdown<T> extends StatelessWidget {
  const DefaultDropdown(
      {Key? key,
      required this.value,
      required this.itemValues,
      required this.itemTitles,
      required this.onChanged})
      : super(key: key);

  final T value;
  final List<String> itemTitles;
  final List<DropdownMenuItem<T>> itemValues;
  final void Function(T?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(smallRadius),
          color: lightGray,
          boxShadow: [defaultShadow]),
      child: DropdownButton(
          selectedItemBuilder: (_) => itemTitles
              .map((item) => DropdownItemContent(value: item, isShowDot: false,))
              .toList(),
          iconSize: 36,
          iconEnabledColor: purple,
          borderRadius: const BorderRadius.all(defaultRadius),
          dropdownColor: lightGray,
          value: value,
          items: itemValues.toList(),
          onChanged: onChanged),
    );
  }
}
