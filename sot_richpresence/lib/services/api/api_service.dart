import 'package:http/http.dart';
import 'package:sot_richpresence/models/activities/activity_company.dart';
import 'package:sot_richpresence/models/translations/available_translation.dart';

class ApiService {
  static Future<List<AvailableTranslation>> fetchAvailableTranslations() async {
    final response = await sendGetRequest('https://api.github.com/repos/SoT-RichPresence/translations/contents');
    if (response.statusCode == 200) {
      return AvailableTranslation.fromJsonList(response.body);
    } else {
      throw Exception('Failed to load available translations');
    }
  }

  static Future<List<ActivityCompany>> fetchActivityCategories() async {
    final response =
        await sendGetRequest('https://raw.githubusercontent.com/AlexisL61/SOT_RichPresence/main/api/activities.json');
    if (response.statusCode == 200) {
      return ActivityCompany.fromJsonList(response.body);
    } else {
      throw Exception('Failed to load activity categories');
    }
  }

  static Future<Response> sendGetRequest(String url) async {
    return get(Uri.parse(url));
  }
}
