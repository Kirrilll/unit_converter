import 'package:converter/app/colors.dart';
import 'package:flutter/material.dart';

final calculatorDarkTheme = ThemeData.dark(useMaterial3: true).copyWith(
  canvasColor: lightGray,
  colorScheme: const ColorScheme.dark(
    background: gray,
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
      bodyMedium: const TextStyle(fontSize: 14, color: lightGreen),
      titleMedium: const TextStyle(fontSize: 14, color: lightGreen),
      titleLarge: const TextStyle(fontSize: 20, color: lightGreen)),
);
