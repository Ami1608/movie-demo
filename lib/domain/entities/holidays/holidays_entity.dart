import 'package:movies_app/presentation/common/utils/app_constants.dart';

class HolidaysEntity {
  final String title;
  final DateTime date;

  HolidaysEntity({
    required this.title ,
    required this.date,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[AppConstants.HOLIDAY_TITLE_PARAM] = title;
    data[AppConstants.DATE_PARAM] = date;
    return data;
  }

  factory HolidaysEntity.fromJson(Map<String, dynamic> json , dateTime) {
    HolidaysEntity holidayEntity = HolidaysEntity(
        title: json[AppConstants.HOLIDAY_TITLE_PARAM],
        date: dateTime,
    );
    return holidayEntity;
  }
}