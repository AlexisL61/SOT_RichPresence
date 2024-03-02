class ActivityCategory {
  final String id;
  final String name;
  final String image;

  const ActivityCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  static ActivityCategory fromJson(Map<String, dynamic> json) {
    return ActivityCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }

  static List<ActivityCategory> fromJsonList(List<dynamic> json) {
    return json.map((e) => ActivityCategory.fromJson(e)).toList();
  }
}
