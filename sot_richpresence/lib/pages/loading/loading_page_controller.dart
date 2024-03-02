import 'package:sot_richpresence/services/activities/activity_service.dart';

class LoadingPageController {
  Future<void> init() async {
    await ActivityService.fetchActivityCategories();
  }
}
