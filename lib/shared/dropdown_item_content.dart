import 'package:converter/app/colors.dart';
import 'package:converter/shared/constants.dart';
import 'package:flutter/material.dart';

class DropdownItemContent<T> extends StatelessWidget {
  const DropdownItemContent(
      {Key? key,
      required this.value,
      this.isSelected = false,
      this.isShowDot = true})
      : super(key: key);

  final String value;
  final bool isSelected;
  final bool isShowDot;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Builder(
            builder: (_) => isShowDot
                ? Text('•',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: isSelected ? orange : purple,
                    ))
                : const SizedBox()),
        defaultHorizontalSpace,
        Text(
          value,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
