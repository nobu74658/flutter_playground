// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter_playground/utils/converter/date_time.dart';

// part 'entity.freezed.dart';

// @freezed
// abstract class CourseSchedule<T extends MenuBase> with _$CourseSchedule {
//   const factory CourseSchedule({
//     required String courseScheduleId,
//     required String serviceSeasonId,
//     required String yuiStationId,
//     required int quantity,
//     required T menu,
//     @dateTimeToServerTimeConverter required DateTime date,
//     @onlyOneDateTimeToServerTimeConverter DateTime? createdAt,
//   }) = _CourseSchedule;

//   const CourseSchedule._();

//   factory CourseSchedule.fromJsonData(Map<String, dynamic> json) =>
//       CourseSchedule(
//         courseScheduleId: json['courseScheduleId'] as String,
//         serviceSeasonId: json['serviceSeasonId'] as String,
//         yuiStationId: json['yuiStationId'] as String,
//         quantity: json['quantity'] as int,
//         menu: json['menu'] as T,
//         date: json['date'] as DateTime,
//         createdAt: json['createdAt'] as DateTime?,
//       );

//   Map<String, dynamic> toJsonData() => {
//         'courseScheduleId': courseScheduleId,
//         'serviceSeasonId': serviceSeasonId,
//         'yuiStationId': yuiStationId,
//         'quantity': quantity,
//         'menu': menu.menuId,
//         'date': date,
//         'createdAt': createdAt,
//       };

//   static String get collectionName => 'schedules';

//   static CourseSchedule get mock => CourseSchedule(
//         courseScheduleId: 'courseScheduleId',
//         createdAt: DateTime.now(),
//         serviceSeasonId: '',
//         yuiStationId: 'yuiStationId',
//         menu: Crop.mock,
//         quantity: 3,
//         date: DateTime.now(),
//       );
// }
