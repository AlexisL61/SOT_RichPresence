import 'package:http/http.dart';
import 'package:sot_richpresence/models/translations/available_translation.dart';

class ApiService {

  static Future<List<AvailableTranslation>> fetchAvailableTranslations() async {
    final response = await get('https://api.github.com/repos/SoT-RichPresence/translations/contents');
    if (response.statusCode == 200) {
      return AvailableTranslation.fromJsonList(response.body);
    } else {
      throw Exception('Failed to load available translations');
    }
  }

  static Future<Response> get(String url) async {
    return get(url);
  }
}