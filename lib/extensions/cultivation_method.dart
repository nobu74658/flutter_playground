class CultivationMethod {
  const CultivationMethod._(this.value, this.name);

  final String value;
  final String name;

  static const CultivationMethod organic =
      CultivationMethod._('organic', '有機栽培');
  static const CultivationMethod standard =
      CultivationMethod._('standard', '慣行栽培');
  static const CultivationMethod noPesticideDuringCultivation =
      CultivationMethod._('no-pesticide-during-cultivation', '栽培期間中農薬不使用');
  static const CultivationMethod special =
      CultivationMethod._('special', '特別栽培');
  static const CultivationMethod unknown = CultivationMethod._('unknown', '不明');

  static const List<CultivationMethod> values = [
    organic,
    standard,
    noPesticideDuringCultivation,
    special,
  ];

  static CultivationMethod fromValue(String value) => values.firstWhere(
        (element) => element.value == value,
        orElse: () => unknown,
      );
}
