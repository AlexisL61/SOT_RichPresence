import 'package:sot_richpresence/models/translations/available_translation.dart';
import 'package:sot_richpresence/services/api/api_service.dart';

class TranslationsService {
  static List<AvailableTranslation> availableTranslations = [];
  static Map<String, dynamic> currentTranslation = {};

  static Future<void> fetchAvailableTranslations() async {
    availableTranslations = await ApiService.fetchAvailableTranslations();
  }

  static Future<void> fetchSpecificTranslation(String translation) async {
    currentTranslation = await ApiService.fetchSpecificTranslation(translation);
  }

  static String onlineTranslate(String translation) {
    if (currentTranslation.containsKey(translation)) {
      return currentTranslation[translation];
    } else {
      return translation;
    }
  }
}

String onlineTr(String translation) {
  return TranslationsService.onlineTranslate(translation);
}
