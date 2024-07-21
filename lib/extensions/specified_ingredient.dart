enum SpecifiedIngredient {
  shrimp._('shrimp', 'えび'),
  crab._('crab', 'かに'),
  walnut._('walnut', 'くるみ'),
  wheat._('wheat', '小麦'),
  soba._('soba', 'そば'),
  egg._('egg', '卵'),
  milk._('milk', '乳'),
  peanut._('peanut', '落花生（ピーナッツ）'),
  almond._('almond', 'アーモンド'),
  abalone._('abalone', 'あわび'),
  squid._('squid', 'いか'),
  salmonRoe._('salmon-roe', 'いくら'),
  orange._('orange', 'オレンジ'),
  cashewNuts._('cashew-nuts', 'カシューナッツ'),
  kiwiFruit._('kiwi-fruit', 'キウイフルーツ'),
  beef._('beef', '牛肉'),
  sesame._('sesame', 'ごま'),
  sake._('sake', 'さけ'),
  mackerel._('mackerel', 'さば'),
  soybeans._('soybeans', '大豆'),
  chickenMeat._('chicken-meat', '鶏肉'),
  banana._('banana', 'バナナ'),
  pork._('pork', '豚肉'),
  macadamiaNuts._('macadamia-nuts', 'マカダミアナッツ'),
  peach._('peach', 'もも'),
  yam._('yam', 'やまいも'),
  flutter_playgroundle._('flutter_playgroundle', 'りんご'),
  gelatin._('gelatin', 'ゼラチン'),
  unknown._('unknown', '不明');

  const SpecifiedIngredient._(this.value, this.name);
  final String value;
  final String name;

  static const Set<SpecifiedIngredient> eightSpecifiedIngredients = {
    shrimp,
    crab,
    walnut,
    wheat,
    soba,
    egg,
    milk,
    peanut,
  };

  static const Set<SpecifiedIngredient>
      twentyItemsEquivalentToSpecifiedIngredients = {
    almond,
    abalone,
    squid,
    salmonRoe,
    orange,
    cashewNuts,
    kiwiFruit,
    beef,
    sesame,
    sake,
    mackerel,
    soybeans,
    chickenMeat,
    banana,
    pork,
    macadamiaNuts,
    peach,
    yam,
    flutter_playgroundle,
    gelatin,
  };

  static SpecifiedIngredient fromValue(String value) => values.firstWhere(
        (element) => element.value == value,
        orElse: () => unknown,
      );
}
