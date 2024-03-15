import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/services/activities/activity_service.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class LoadingPageController {
  Future<void> init(BuildContext buildContext) async {
    await TranslationsService.fetchAvailableTranslations();
    await TranslationsService.fetchSpecificTranslation(buildContext.locale.languageCode);
    await ActivityService.fetchActivityCategories();
  }
}
