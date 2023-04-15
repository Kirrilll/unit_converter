import 'dart:ui';

import 'package:converter/app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const defaultRadius = Radius.circular(15);
const smallRadius = Radius.circular(7);
const defaultShadow = BoxShadow(
  color:black,
  offset: Offset(0, 4),
  blurRadius: 4
);

const defaultVerticalSpace = SizedBox(height: 12);
const defaultHorizontalSpace = SizedBox(width: 16);
const defaultPadding = EdgeInsets.symmetric(vertical: 18, horizontal: 14);
const inputBorder =  OutlineInputBorder(
    borderRadius: BorderRadius.all(smallRadius),
    borderSide: BorderSide(color: lightGray, width: 4)
);