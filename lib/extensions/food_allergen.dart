import 'package:flutter_playground/extensions/specified_ingredient.dart';

class FoodAllergen {
  const FoodAllergen._(this.value, this.name, this.ingredients);
  final String value;
  final String name;
  final Set<SpecifiedIngredient> ingredients;

  static const FoodAllergen nothing = FoodAllergen._(
    'nothing',
    'なし',
    {},
  );
  static const FoodAllergen eightSpecifiedIngredients = FoodAllergen._(
    'eight-specified-ingredients',
    '特定原材料8品目',
    SpecifiedIngredient.eightSpecifiedIngredients,
  );
  static const FoodAllergen twentyItemsEquivalentToSpecifiedIngredients =
      FoodAllergen._(
    'twenty-items-equivalent-to-specified-ingredients',
    '特定原材料に準ずる20品目',
    SpecifiedIngredient.twentyItemsEquivalentToSpecifiedIngredients,
  );
  static const FoodAllergen unknown = FoodAllergen._(
    'unknown',
    '不明',
    {},
  );

  static const Set<FoodAllergen> values = {
    nothing,
    eightSpecifiedIngredients,
    twentyItemsEquivalentToSpecifiedIngredients,
  };

  static FoodAllergen fromValue(String value) => values.firstWhere(
        (element) => element.value == value,
        orElse: () => unknown,
      );
}
