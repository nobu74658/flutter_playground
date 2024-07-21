import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/menu_tag.dart';

const menuTagConverter = MenuTagConverter();

class MenuTagConverter implements JsonConverter<MenuTag, Object> {
  const MenuTagConverter();

  @override
  MenuTag fromJson(Object json) {
    if (json is String) {
      return MenuTag.fromValue(json);
    }
    return MenuTag.unknown;
  }

  @override
  Object toJson(MenuTag object) => object.value;
}
