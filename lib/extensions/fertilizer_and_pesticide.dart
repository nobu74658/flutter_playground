class FertilizerAndPesticide {
  const FertilizerAndPesticide._(this.value);

  final String value;
  double? get amount => _amountTextToSavingRate(value);

  bool get isUsed => value.compareTo('不使用') != 0;

  static FertilizerAndPesticide chemicalFertilizer(String amountText) =>
      FertilizerAndPesticide._(
        amountText,
      );
  static FertilizerAndPesticide pesticideTargetedForSaving(String amountText) =>
      FertilizerAndPesticide._(
        amountText,
      );

  double? _amountTextToSavingRate(String amountText) {
    // 数値の部分だけ取り出す
    final amount = amountText.replaceAll(RegExp('[^0-9.]'), '');
    final savingRate = double.tryParse(amount);
    if (savingRate == null) {
      return null;
    }
    return savingRate;
  }

  bool get validate {
    // 不使用の場合
    if (!isUsed) {
      return true;
    }
    // amount が 5~9.9 の間にあればOK
    if (amount == null) {
      return false;
    } else {
      return amount! >= 5 && amount! <= 9.9;
    }
  }
}
