import 'dart:convert';

import 'package:sot_richpresence/models/activities/activity_category.dart';

class ActivityCompany {
  final String id;
  final String name;
  final String image;
  final String backgroundImage;
  final List<ActivityCategory> categories;

  const ActivityCompany({
    required this.id,
    required this.name,
    required this.image,
    required this.backgroundImage,
    required this.categories
  });

  static ActivityCompany fromJson(Map<String, dynamic> json) {
    return ActivityCompany(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      backgroundImage: json['background_image'] as String,
      categories: ActivityCategory.fromJsonList(json['categories']),
    );
  }

  static List<ActivityCompany> fromJsonList(String json) {
    final List<dynamic> parsed = jsonDecode(json);
    return parsed.map((e) => ActivityCompany.fromJson(e)).toList();
  }
}
