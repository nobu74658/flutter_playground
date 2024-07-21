import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const geoPointConverter = GeoPointConverter();

class GeoPointConverter implements JsonConverter<GeoPoint, Object> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Object json) {
    if (json is GeoPoint) {
      return json;
    }
    return const GeoPoint(0, 0);
  }

  @override
  Object toJson(GeoPoint object) => object;
}
