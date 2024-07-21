// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter_playground/extensions/menu_tag.dart';
// import 'package:flutter_playground/utils/converter/date_time.dart';

// part 'entity.freezed.dart';

// @freezed
// abstract class CourseMenu<T extends MenuBase> with _$CourseMenu {
//   const factory CourseMenu({
//     required int quantity,
//     required T menu,
//     @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
//   }) = _CourseMenu;

//   const CourseMenu._();

//   factory CourseMenu.fromJsonData(
//     Map<String, dynamic> json, {
//     required bool isReleased,
//   }) =>
//       isReleased
//           ? CourseMenu._releaseCourseMenuFromJson(json)
//           : CourseMenu._courseMenuFromJson(json);

//   factory CourseMenu._courseMenuFromJson(Map<String, dynamic> json) =>
//       CourseMenu(
//         quantity: json['quantity'] as int,
//         menu: json['menu'] as T,
//         createdAt: (json['createdAt'] as Timestamp).toDate(),
//       );

//   factory CourseMenu._releaseCourseMenuFromJson(Map<String, dynamic> json) =>
//       CourseMenu(
//         menu: (json['menuTag'] == MenuTag.processedFood.value
//             ? ProcessedFood.fromJson(json)
//             : Crop.fromJson(json)) as T,
//         quantity: json['quantity'],
//       );

//   Map<String, dynamic> toJsonData({required bool isReleased}) =>
//       isReleased ? _releaseCourseToJson() : _courseToJson();

//   Map<String, dynamic> _courseToJson() => {
//         'quantity': quantity,
//         'menu': menu.toJson(),
//         'createdAt': createdAt == null
//             ? FieldValue.serverTimestamp()
//             : Timestamp.fromDate(createdAt!),
//       };

//   Map<String, dynamic> _releaseCourseToJson() =>
//       menu.toJson()..addAll({'quantity': quantity});

//   static String get cropCollectionName => 'crops';

//   static String get processedFoodCollectionName => 'processed_foods';

//   static CourseMenu get mock => CourseMenu(
//         quantity: 1,
//         menu: Crop.mock,
//       );
// }

// extension CourseMenuExtension on List<CourseMenu> {
//   int get totalPrice => fold(
//         0,
//         (previousValue, element) =>
//             previousValue + element.quantity * element.menu.unitPrice,
//       );
// }
