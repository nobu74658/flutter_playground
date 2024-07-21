import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/specified_ingredient.dart';

const specifiedIngredientsConverter = SpecifiedIngredientsConverter();

class SpecifiedIngredientsConverter
    implements JsonConverter<Set<SpecifiedIngredient>, Object> {
  const SpecifiedIngredientsConverter();

  @override
  Set<SpecifiedIngredient> fromJson(Object json) {
    if (json is List<dynamic>) {
      return json
          .map((e) => SpecifiedIngredient.fromValue(e as String))
          .toSet();
    }
    return {};
  }

  @override
  Object toJson(Set<SpecifiedIngredient> object) =>
      object.map((e) => e.value).toList();
}
