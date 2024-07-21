import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/nutritional_information.dart';

const nutritionalInformationConverter = NutritionalInformationConverter();

class NutritionalInformationConverter
    implements JsonConverter<List<NutritionalInformation>, Object> {
  const NutritionalInformationConverter();

  @override
  List<NutritionalInformation> fromJson(Object json) {
    if (json is List) {
      return json
          .map(
            (e) => NutritionalInformation.fromJson(
              e.cast<String, dynamic>(),
            ),
          )
          .toList();
    }
    throw UnimplementedError('NutritionalInformationConverter.fromJson');
  }

  @override
  Object toJson(List<NutritionalInformation> object) {
    // amountがnullのものは除外する
    final filtered = object.where((element) => element.amount != null).toList();
    return filtered.map((e) => e.toJson()).toList();
  }
}
