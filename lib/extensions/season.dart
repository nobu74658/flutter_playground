enum Season {
  spring._('spring', '春（4〜6月）'),
  summer._('summer', '夏（7〜9月）'),
  autumn._('autumn', '秋（10〜12月）'),
  winter._('winter', '冬（1〜3月）');

  const Season._(this.value, this.name);
  final String value;
  final String name;

  static Season fromValue(String value) {
    switch (value) {
      case 'spring':
        return Season.spring;
      case 'summer':
        return Season.summer;
      case 'autumn':
        return Season.autumn;
      case 'winter':
        return Season.winter;
      default:
        throw ArgumentError('Unknown season: $value');
    }
  }
}
