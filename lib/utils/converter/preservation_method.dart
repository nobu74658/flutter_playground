import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/preservation_method.dart';

const preservationMethodConverter = PreservationMethodConverter();

class PreservationMethodConverter
    implements JsonConverter<PreservationMethod?, Object?> {
  const PreservationMethodConverter();

  @override
  PreservationMethod? fromJson(Object? json) {
    if (json is String) {
      return PreservationMethod.fromValue(json);
    }
    return null;
  }

  @override
  Object? toJson(PreservationMethod? object) {
    if (object == null) {
      return null;
    }
    return object.value;
  }
}
