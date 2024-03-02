import 'package:sot_richpresence/models/translations/available_translation.dart';
import 'package:sot_richpresence/services/api/api_service.dart';

class TranslationsService {
  static List<AvailableTranslation> availableTranslations = [];

  static Future<void> fetchAvailableTranslations() async {
    availableTranslations = await ApiService.fetchAvailableTranslations();
  }
}
