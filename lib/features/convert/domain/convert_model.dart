import 'package:converter/entities/unit/domain/convert.dart';
import 'package:converter/entities/unit/domain/unit.dart';
import 'package:converter/entities/unit/lib/units.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'convert_model.g.dart';

class ConvertModel = ConvertModelBase with _$ConvertModel;

abstract class ConvertModelBase with Store {
  @observable
  Unit _uTo = metresUnit;
  @observable
  Unit _uFrom = metresUnit;

  final TextEditingController _toController = TextEditingController(text: '0');
  final TextEditingController _fromController = TextEditingController(text: '0');

  final FocusNode _toFocusNode = FocusNode();
  final FocusNode _fromFocusNode = FocusNode();

  ConvertModelBase() {
    _fromController.addListener(() {
      if(_fromFocusNode.hasFocus) _recalculateTo();
    });
    _toController.addListener(() {
      if(_toFocusNode.hasFocus) _recalculateFrom();
    });
  }

  TextEditingController get toController => _toController;
  TextEditingController get fromController => _fromController;
  FocusNode get toFocusNode => _toFocusNode;
  FocusNode get fromFocusNode => _fromFocusNode;


  Unit get uTo => _uTo;
  Unit get uFrom => _uFrom;

  @action
  handleUnitTo(Unit uTo) {
    _uTo = uTo;
    _recalculateFrom();
  }

  @action
  handleUnitFrom(Unit uFrom){
    _uFrom = uFrom;
    _recalculateTo();
  }

  _recalculateTo() {
    final uFromAmount = double.tryParse(_fromController.value.text);
    if(uFromAmount != null) _toController.text = convertUnits(_uFrom, _uTo, uFromAmount).toString();
  }


  _recalculateFrom() {
    final uToAmount = double.tryParse(_toController.value.text);
    if(uToAmount != null) _fromController.text = convertUnits(_uTo, _uFrom, uToAmount).toString();
  }
}
