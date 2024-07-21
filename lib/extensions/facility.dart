class Facility {
  const Facility._(this.value, this.name);

  final String value;
  final String name;

  static const Facility freeParking = Facility._('free-parking', '無料駐車場');
  static const Facility paidParking = Facility._('paid-parking', '有料駐車場');
  static const Facility bicycleParking =
      Facility._('bicycle-parking', '自転車置き場');
  static const Facility airConditioning = Facility._('air-conditioning', '空調');
  static const Facility temporaryStorage =
      Facility._('temporary-storage', '保管');
  static const Facility unknown = Facility._('unknown', '不明');

  static const List<Facility> values = <Facility>[
    freeParking,
    paidParking,
    bicycleParking,
    airConditioning,
    temporaryStorage,
  ];

  static Facility fromValue(String value) {
    final facility = values.firstWhere(
      (element) => element.value == value,
      orElse: () => unknown,
    );
    return facility;
  }
}
