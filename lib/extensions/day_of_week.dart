class DayOfWeek {
  const DayOfWeek._(this.value);

  final int value;

  static const DayOfWeek monday = DayOfWeek._(1);
  static const DayOfWeek tuesday = DayOfWeek._(2);
  static const DayOfWeek wednesday = DayOfWeek._(3);
  static const DayOfWeek thursday = DayOfWeek._(4);
  static const DayOfWeek friday = DayOfWeek._(5);
  static const DayOfWeek saturday = DayOfWeek._(6);
  static const DayOfWeek sunday = DayOfWeek._(7);
  static const DayOfWeek unknown = DayOfWeek._(-1);

  static const List<DayOfWeek> values = <DayOfWeek>[
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
    sunday,
  ];

  static DayOfWeek fromValue(int value) {
    if (value < 1 || value > 7) {
      return unknown;
    }
    return DayOfWeek._(value);
  }
}

extension DayOfWeekExtension on DayOfWeek {
  String dayOfWeekInJa({bool isShort = false}) {
    String dayOfWeekJa = '';
    switch (value) {
      case 1:
        dayOfWeekJa = '月';
      case 2:
        dayOfWeekJa = '火';
      case 3:
        dayOfWeekJa = '水';
      case 4:
        dayOfWeekJa = '木';
      case 5:
        dayOfWeekJa = '金';
      case 6:
        dayOfWeekJa = '土';
      case 7:
        dayOfWeekJa = '日';
      default:
        dayOfWeekJa = '不明';
    }
    return isShort ? dayOfWeekJa : '$dayOfWeekJa曜日';
  }
}
