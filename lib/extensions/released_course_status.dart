import 'package:flutter/material.dart';

class ReleasedCourseStatus {
  const ReleasedCourseStatus._(
    this.value,
    this.name,
    this.iconData,
    this.color,
  );

  final String value;
  final String name;
  final IconData iconData;
  final Color color;

  // 申請前、申請中、却下、承認、販売中、終了、不明
  static const ReleasedCourseStatus before = ReleasedCourseStatus._(
    'before',
    '申請前',
    Icons.inbox,
    Colors.grey,
  );
  static const ReleasedCourseStatus flutter_playgroundlied =
      ReleasedCourseStatus._(
    'flutter_playgroundlied',
    '申請中',
    Icons.stop_circle_outlined,
    Colors.blue,
  );
  static const ReleasedCourseStatus canceled = ReleasedCourseStatus._(
    'canceled',
    '却下済み',
    Icons.close_outlined,
    Colors.red,
  );
  static const ReleasedCourseStatus flutter_playgroundroved =
      ReleasedCourseStatus._(
    'flutter_playgroundroved',
    '承認済み',
    Icons.check_outlined,
    Colors.green,
  );
  static const ReleasedCourseStatus onSale = ReleasedCourseStatus._(
    'onSale',
    '販売中',
    Icons.shopping_cart_outlined,
    Colors.orange,
  );
  static const ReleasedCourseStatus closed = ReleasedCourseStatus._(
    'closed',
    '終了',
    Icons.archive_outlined,
    Colors.black,
  );
  static const ReleasedCourseStatus unknown = ReleasedCourseStatus._(
    'unknown',
    '不明',
    Icons.help_outline_outlined,
    Colors.grey,
  );

  static const List<ReleasedCourseStatus> values = [
    before,
    flutter_playgroundlied,
    canceled,
    flutter_playgroundroved,
    onSale,
    closed,
  ];

  static const List<ReleasedCourseStatus> beforeSaleValues = [
    before,
    flutter_playgroundlied,
    canceled,
    flutter_playgroundroved,
  ];

  bool get canDelete => beforeSaleValues.contains(this);

  static ReleasedCourseStatus fromValue(String value) => values.firstWhere(
        (element) => element.value == value,
        orElse: () => unknown,
      );
}
