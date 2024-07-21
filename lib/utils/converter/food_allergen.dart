import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/food_allergen.dart';

const foodAllergenListConverter = FoodAllergenListConverter();

class FoodAllergenListConverter
    implements JsonConverter<Set<FoodAllergen>, List<dynamic>> {
  const FoodAllergenListConverter();

  @override
  Set<FoodAllergen> fromJson(List<dynamic> json) =>
      json.map((e) => FoodAllergen.fromValue(e as String)).toSet();

  @override
  List<Object> toJson(Set<FoodAllergen> object) =>
      object.map((e) => e.value).toList();
}
