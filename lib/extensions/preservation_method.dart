enum PreservationMethod {
  frozen._('frozen', '冷凍'),
  refrigerated._('refrigerated', '冷蔵'),
  roomTemperature._('roomTemperature', '常温');

  const PreservationMethod._(this.value, this.label);

  final String value;
  final String label;

  static PreservationMethod fromValue(String value) {
    switch (value) {
      case 'frozen':
        return PreservationMethod.frozen;
      case 'refrigerated':
        return PreservationMethod.refrigerated;
      case 'roomTemperature':
        return PreservationMethod.roomTemperature;
      default:
        throw ArgumentError('Invalid value: $value');
    }
  }
}
