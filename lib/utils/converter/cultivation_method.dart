import 'package:flutter_playground/extensions/cultivation_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const cultivationMethodConverter = CultivationMethodConverter();

class CultivationMethodConverter
    implements JsonConverter<CultivationMethod?, Object?> {
  const CultivationMethodConverter();

  @override
  CultivationMethod? fromJson(Object? json) {
    if (json is String) {
      return CultivationMethod.fromValue(json);
    }
    return null;
  }

  @override
  Object? toJson(CultivationMethod? cultivationMethod) {
    if (cultivationMethod == null) {
      return null;
    } else {
      return cultivationMethod.value;
    }
  }
}
