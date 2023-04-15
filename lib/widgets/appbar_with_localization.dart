
import 'package:flutter/material.dart';

import '../features/localization_dropdown.dart';

final appBarWithLocalization = AppBar(

  backgroundColor: Colors.transparent,
  actions: const [ Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: LocalizationDropdown(),
  )]
);