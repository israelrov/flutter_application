import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:json_annotation/json_annotation.dart';

part 'modelvisit.g.dart';

@JsonSerializable()
class Activity {
  String time;
  String description;

  Activity({required this.time, required this.description});

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);
  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

@JsonSerializable()
class Day {
  int day;
  List<Activity> activities;

  Day({required this.day, required this.activities});

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
  Map<String, dynamic> toJson() => _$DayToJson(this);
}
class TripPlan {
  String id;
  List<Day> plan;
  String? key;

  TripPlan({
    required this.id,
    required this.plan,
    this.key,
  });

  factory TripPlan.fromJson(Map<String, dynamic> json) {
    return TripPlan(
      id: json['_id'],
      plan: List<Day>.from(json['plan'].map((x) => Day.fromJson(x))),
      key: json['key'],
    );
  }
}


