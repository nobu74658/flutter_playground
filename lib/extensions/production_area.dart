class ProductionArea {
  const ProductionArea(this.areaName);
  final String areaName;

  static List<(String, List<ProductionArea>)> get groups => [
        toyookaGroup,
        kinosakiGroup,
        takenoGroup,
        hidakaGroup,
        izushiGroup,
        tantoGroup,
      ];

  static (String, List<ProductionArea>) toyookaGroup = (
    '豊岡地域',
    [
      toyooka,
      hachijo,
      mie,
      taduruno,
      gonosho,
      nitta,
      nakasuji,
      nasa,
      minato,
      kamiyoshi,
    ],
  );
  static const ProductionArea toyooka = ProductionArea('豊岡');
  static const ProductionArea hachijo = ProductionArea('八条');
  static const ProductionArea mie = ProductionArea('三江');
  static const ProductionArea taduruno = ProductionArea('田鶴野');
  static const ProductionArea gonosho = ProductionArea('五荘');
  static const ProductionArea nitta = ProductionArea('新田');
  static const ProductionArea nakasuji = ProductionArea('中筋');
  static const ProductionArea nasa = ProductionArea('奈佐');
  static const ProductionArea minato = ProductionArea('港');
  static const ProductionArea kamiyoshi = ProductionArea('神美');

  static (String, List<ProductionArea>) kinosakiGroup = (
    '城崎地域',
    [
      kinosaki,
    ],
  );
  static const ProductionArea kinosaki = ProductionArea('城崎');

  static (String, List<ProductionArea>) takenoGroup = (
    '竹野地域',
    [
      takenominami,
      nakatakeno,
      takeno,
    ],
  );
  static const ProductionArea takenominami = ProductionArea('竹野南');
  static const ProductionArea nakatakeno = ProductionArea('中竹野');
  static const ProductionArea takeno = ProductionArea('竹野');

  static (String, List<ProductionArea>) hidakaGroup = (
    '日高地域',
    [
      kokufu,
      yashiro,
      hidaka,
      mikata,
      kiyotaki,
      nishiki,
    ],
  );
  static const ProductionArea kokufu = ProductionArea('国府');
  static const ProductionArea yashiro = ProductionArea('八代');
  static const ProductionArea hidaka = ProductionArea('日高');
  static const ProductionArea mikata = ProductionArea('三方');
  static const ProductionArea kiyotaki = ProductionArea('清滝');
  static const ProductionArea nishiki = ProductionArea('西気');

  static (String, List<ProductionArea>) izushiGroup = (
    '出石地域',
    [
      kodo,
      sugedani,
      fukusumi,
      terasaka,
      osaka,
      ono,
    ],
  );
  static const ProductionArea kodo = ProductionArea('弘道');
  static const ProductionArea sugedani = ProductionArea('菅谷');
  static const ProductionArea fukusumi = ProductionArea('福住');
  static const ProductionArea terasaka = ProductionArea('寺坂');
  static const ProductionArea osaka = ProductionArea('小坂');
  static const ProductionArea ono = ProductionArea('小野');

  static (String, List<ProductionArea>) tantoGroup = (
    '但東地域',
    [
      shibo,
      aihashi,
      takahashi,
    ],
  );
  static const ProductionArea shibo = ProductionArea('資母');
  static const ProductionArea aihashi = ProductionArea('合橋');
  static const ProductionArea takahashi = ProductionArea('高橋');

  static final values = groups.expand((element) => element.$2).toList();

  static ProductionArea fromValue(String value) => values.firstWhere(
        (element) => element.areaName == value,
        orElse: () => ProductionArea(value),
      );

  ProductionArea? get otherToNull {
    final index = values.indexWhere((element) => element == this);
    if (index == -1) {
      return null;
    }
    return this;
  }
}
