import 'package:sot_richpresence/models/activities/activity.dart';

class ActivityCategory {
  final String name;
  final String id;
  final List<Activity> activities;

  ActivityCategory({required this.name, required this.id, required this.activities});

  factory ActivityCategory.fromJson(Map<String, dynamic> json) {
    return ActivityCategory(
      name: json['name'],
      id: json['id'],
      activities: Activity.fromJsonList(json['activities']),
    );
  }

  static List<ActivityCategory> fromJsonList(List<dynamic> json) {
    return json.map((e) => ActivityCategory.fromJson(e)).toList();
  }
}