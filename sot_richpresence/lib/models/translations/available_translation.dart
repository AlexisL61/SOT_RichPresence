import 'dart:convert';

class AvailableTranslation {
  final String language;
  final String name;

  AvailableTranslation({required this.language, required this.name});

  factory AvailableTranslation.fromJson(Map<String, dynamic> json) {
    return AvailableTranslation(
      language: json['id'],
      name: json['name'],
    );
  }

  static List<AvailableTranslation> fromJsonList(String json) {
    final List<dynamic> parsed = jsonDecode(json);
    return parsed.map((e) => AvailableTranslation.fromJson(e)).toList();
  }
}