class NutritionalInformation {
  const NutritionalInformation({
    required this.name,
    required this.amount,
    required this.unit,
    required this.children,
  });

  factory NutritionalInformation.fromJson(Map<String, dynamic> json) =>
      NutritionalInformation(
        name: json['name'] as String,
        amount: json['amount'] as double,
        unit: json['unit'] as String,
        children: (json['children'] as List<dynamic>)
            .map(
              (e) => NutritionalInformation.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );

  final String name;
  final double? amount;
  final String unit;
  final List<NutritionalInformation> children;

  Map<String, dynamic> toJson() => {
      'name': name,
      'amount': amount,
      'unit': unit,
      'children': children.map((e) => e.toJson()).toList(),
    };

  static const List<NutritionalInformation> defaultValues = [
    NutritionalInformation(
      name: '熱量',
      amount: null,
      unit: 'kcal',
      children: [],
    ),
    NutritionalInformation(
      name: 'たんぱく質',
      amount: null,
      unit: 'g',
      children: [],
    ),
    NutritionalInformation(
      name: '脂質',
      amount: null,
      unit: 'g',
      children: [],
    ),
    NutritionalInformation(
      name: '炭水化物',
      amount: null,
      unit: 'g',
      children: [
        NutritionalInformation(
          name: '糖質',
          amount: null,
          unit: 'g',
          children: [],
        ),
        NutritionalInformation(
          name: '食物繊維',
          amount: null,
          unit: 'g',
          children: [],
        ),
      ],
    ),
    NutritionalInformation(
      name: '食塩相当量',
      amount: null,
      unit: 'g',
      children: [],
    ),
  ];
}
