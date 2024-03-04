class Activity {
  final String id;
  final String name;
  final int length;
  final String description;
  final String image;

  const Activity({
    required this.id,
    required this.name,
    required this.length,
    required this.description,
    required this.image,
  });

  static Activity fromJson(Map<String, dynamic> json) {
    return Activity(
      id: json['id'] as String,
      name: json['name'] as String,
      length: json['length'] as int,
      description: json['description'] as String,
      image: json['image'] as String,
    );
  }

  static fromJsonList(json) {}
}
