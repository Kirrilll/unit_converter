import 'package:converter/app/colors.dart';
import 'package:converter/shared/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.controller,
    this.focusNode
  }) : super(key: key);

  final TextEditingController controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {

    return TextField(
      focusNode: focusNode,
      style: Theme.of(context).textTheme.titleMedium,
      controller: controller,
      decoration: const InputDecoration(
        focusColor: lightGray,
        border: inputBorder,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder
      ),
    );
  }
}
