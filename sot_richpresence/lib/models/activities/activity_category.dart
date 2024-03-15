import 'package:sot_richpresence/models/activities/activity.dart';

class ActivityCategory {
  final String name;
  final String id;
  final String icon;
  final List<Activity> activities;

  ActivityCategory({required this.name, required this.id, required this.activities, required this.icon});

  factory ActivityCategory.fromJson(Map<String, dynamic> json) {
    return ActivityCategory(
      name: json['name'],
      id: json['id'],
      activities: Activity.fromJsonList(json['activities']),
      icon: json['icon']
    );
  }

  static List<ActivityCategory> fromJsonList(List<dynamic> json) {
    return json.map((e) => ActivityCategory.fromJson(e)).toList();
  }
}