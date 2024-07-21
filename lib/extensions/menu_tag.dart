class MenuTag {
  const MenuTag._(this.value, this.name);

  final String value;
  final String name;

  static const MenuTag vegetables = MenuTag._('vegetables', '野菜');
  static const MenuTag fruits = MenuTag._('fruits', '果物');
  static const MenuTag rice = MenuTag._('rice', '米');
  static const MenuTag processedFood = MenuTag._('processed-food', '加工食品');
  static const MenuTag other = MenuTag._('other', 'その他');
  static const MenuTag upToProducer = MenuTag._('up-to-producer', 'おまかせ');
  static const MenuTag unknown = MenuTag._('unknown', '不明');

  static const List<MenuTag> values = [
    vegetables,
    fruits,
    rice,
    processedFood,
    other,
    upToProducer,
  ];

  static const Set<MenuTag> crop = {
    vegetables,
    fruits,
    rice,
    other,
    upToProducer,
  };

  static MenuTag fromValue(String value) => values.firstWhere(
        (element) => element.value == value,
        orElse: () => unknown,
      );

  bool get isCrop => crop.contains(this);
}
