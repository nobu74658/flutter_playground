import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/facility.dart';

const facilityListConverter = FacilityListConverter();

class FacilityListConverter
    implements JsonConverter<List<Facility>, List<dynamic>> {
  const FacilityListConverter();

  @override
  List<Facility> fromJson(List<dynamic> json) =>
      json.map((e) => Facility.fromValue(e as String)).toList();

  @override
  List<Object> toJson(List<Facility> object) =>
      object.map((e) => e.value).toList();
}
