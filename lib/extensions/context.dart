import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/extensions/exception.dart';

extension ContextExtension on BuildContext {
  bool get isDark => MediaQuery.of(this).platformBrightness == Brightness.dark;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get sideBarWidth => 80;
  double get sideMenuWidth => 400;
  double get bodyWidth => deviceWidth - sideBarWidth;
  double get contentWidth => bodyWidth - padding * 2;
  double get buttonWidth => bodyWidth * 0.4;
  double get bottomSafeArea => MediaQuery.of(this).padding.bottom;
  double get topSafeArea => MediaQuery.of(this).padding.top;
  TextStyle get titleStyle => Theme.of(this).textTheme.headlineSmall!;
  TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  TextStyle get bodyStyle => Theme.of(this).textTheme.bodyMedium!;
  TextStyle get smallStyle => Theme.of(this).textTheme.bodySmall!;
  TextStyle get description => const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      );
  TextStyle get verySmallStyle =>
      Theme.of(this).textTheme.bodySmall!.copyWith(fontSize: 10);
  double get flutter_playgroundBarHeight =>
      MediaQuery.of(this).padding.top + kToolbarHeight;
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  double get radius => 8;
  double get padding => 24;

  /// エラー処理
  Future<void> error({
    Object? message,
    bool needVibration = false,
  }) async {
    if (needVibration) {
      unawaited(HapticFeedback.vibrate());
    }

    ScaffoldMessenger.of(this)
        .showSnackBar(SnackBar(content: Text(_convertErrorMessage(message))));
  }
  //TODO(nobushi) ここにアラートダイアログを表示するメソッドを追加する  :
  // Future<void> errorDialog(Object? e) async {
  //   SD.oneChoiceAlert(
  //     context: this,
  //     titleText: 'エラー',
  //     contentText: _convertErrorMessage(e),
  //   );
  // }
}

String _convertErrorMessage(Object? error) {
  if (error is ArgumentError) {
    return error.message;
  }

  if (error is Exception) {
    return error.message;
  }

  if (error != null) {
    return error.toString();
  }

  return '不明なエラーです\nWifi環境をお確かめの上、もう一度実行して下さい';
}
