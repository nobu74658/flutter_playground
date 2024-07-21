import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/season.dart';

const seasonListConverter = SeasonListConverter();

class SeasonListConverter implements JsonConverter<Set<Season>, Object> {
  const SeasonListConverter();

  @override
  Set<Season> fromJson(Object json) {
    if (json is List<dynamic>) {
      return json.map((e) => Season.fromValue(e as String)).toSet();
    } else {
      return {};
    }
  }

  @override
  Object toJson(Set<Season> object) => object.map((e) => e.value).toList();
}
