import 'package:calculator_project/widgets/button_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorController extends ChangeNotifier {
  var result = '0';

  void onButtonClick(ButtonClick click) {
    if (result == '0') {
      result = '';
    }

    if (click is CommonButtonClick) {
      result += click.value;
    } else if (click is ClearButtonClick) {
      result = '0';
    } else if (click is ClearEntryButtonClick) {
      result = '0';
    } else if (click is EqualsButtonClick) {
      final v = result.interpret();
      result = '$v';
    }

    notifyListeners();
  }
}
