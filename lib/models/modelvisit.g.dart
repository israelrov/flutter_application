// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelvisit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      time: json['time'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'time': instance.time,
      'description': instance.description,
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      day: json['day'] as int,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'day': instance.day,
      'activities': instance.activities,
    };
