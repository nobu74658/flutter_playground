import 'package:flutter/services.dart';

class DoubleInputFormatter extends TextInputFormatter {
  DoubleInputFormatter({
    this.maxValue = 10,
    this.minValue = 0,
    this.decimalPlaces = 1,
  });

  final double maxValue;
  final double minValue;
  final int decimalPlaces;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text;
    // 入力を空にする場合は、TextEditingControllerに反映させる
    if (newText.isEmpty) {
      return newValue;
    }

    // 負の場合は、-を許可
    // この条件がない場合は, 「-」のみの入力をdouble.parseできないため, 「-」を入力できない
    if (newText == '-' && minValue < 0) {
      return newValue;
    }

    // 入力値が[数字.数字]の形式でない場合は、TextEditingControllerに反映させない
    // 正規表現パターンを作成
    final String pattern = r'^-?\d+\.?\d{0,' + decimalPlaces.toString() + r'}$';
    final RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(newText)) {
      return oldValue;
    }

    final double? parsedValue = double.tryParse(newText);
    if (parsedValue == null) {
      return oldValue;
    }

    if (parsedValue > maxValue) {
      return oldValue;
    }

    if (parsedValue < minValue) {
      return oldValue;
    }

    return newValue;
  }
}
