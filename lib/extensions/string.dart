import 'package:flutter/material.dart';

extension StringExtension on String {
  String get deleteSlash => replaceAll('/', '');

  String get addSlash => this == '/' ? this : '/$this';

  String get deleteFirstRoute {
    final split = this.split('/')..removeRange(0, 2);
    return split.join('/');
  }

  double computeTextHeight(double fontSize, int maxLines, double width) {
    final span = TextSpan(
      text: this,
      style: const TextStyle(
        fontSize: 12,
      ),
    );
    final tp = TextPainter(
      text: span,
      maxLines: 2,
      textDirection: TextDirection.ltr,
    )..layout(maxWidth: 100);
    return tp.size.height;
  }

  int get dotCount {
    int dotCount = 0;
    for (int i = 0; i < length; i++) {
      if (this[i] == '.') {
        dotCount++;
      }
    }
    return dotCount;
  }
}

extension StringListExtension on List<String> {
  List<List<String>> toWhereInList() {
    final List<List<String>> result = [];
    final quotient = length ~/ 10;
    final remainder = length % 10;
    for (var i = 0; i < quotient; i++) {
      result.add(sublist(i * 10, (i + 1) * 10));
    }
    if (remainder > 0) {
      result.add(sublist(quotient * 10, length));
    }
    return result;
  }
}
