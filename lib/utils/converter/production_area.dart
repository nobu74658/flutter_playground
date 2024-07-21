import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/production_area.dart';

const productionAreaConverter = ProductionAreaConverter();

class ProductionAreaConverter implements JsonConverter<ProductionArea, String> {
  const ProductionAreaConverter();

  @override
  ProductionArea fromJson(String json) => ProductionArea.fromValue(json);

  @override
  String toJson(ProductionArea object) => object.areaName;
}
