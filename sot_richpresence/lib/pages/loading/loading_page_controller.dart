import 'package:sot_richpresence/services/activities/activity_service.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class LoadingPageController {
  Future<void> init() async {
    await TranslationsService.fetchAvailableTranslations();
    await TranslationsService.fetchSpecificTranslation('en');
    await ActivityService.fetchActivityCategories();
  }
}
