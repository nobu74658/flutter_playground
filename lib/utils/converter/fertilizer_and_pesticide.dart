import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/fertilizer_and_pesticide.dart';

const pesticideTargetedForSavingConverter =
    FertilizerAndPesticideConverter(isChemicalFertilizer: false);
const chemicalFertilizerConverter =
    FertilizerAndPesticideConverter(isChemicalFertilizer: true);

class FertilizerAndPesticideConverter
    implements JsonConverter<FertilizerAndPesticide?, Object?> {
  const FertilizerAndPesticideConverter({
    required this.isChemicalFertilizer,
  });

  final bool isChemicalFertilizer;

  @override
  FertilizerAndPesticide? fromJson(Object? json) {
    if (json is String) {
      if (isChemicalFertilizer) {
        return FertilizerAndPesticide.chemicalFertilizer(json);
      } else {
        return FertilizerAndPesticide.pesticideTargetedForSaving(json);
      }
    }
    return null;
  }

  @override
  Object? toJson(FertilizerAndPesticide? object) => object?.value;
}
