import 'dart:convert';

class ActivityCategory {
  final String id;
  final String name;
  final String image;
  final String backgroundImage;

  const ActivityCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.backgroundImage,
  });

  static ActivityCategory fromJson(Map<String, dynamic> json) {
    return ActivityCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      backgroundImage: json['background_image'] as String,
    );
  }

  static List<ActivityCategory> fromJsonList(String json) {
    final List<dynamic> parsed = jsonDecode(json);
    return parsed.map((e) => ActivityCategory.fromJson(e)).toList();
  }
}
