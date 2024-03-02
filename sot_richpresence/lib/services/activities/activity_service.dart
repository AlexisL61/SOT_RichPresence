import 'package:sot_richpresence/models/activities/activity_category.dart';
import 'package:sot_richpresence/services/api/api_service.dart';

class ActivityService {
  static List<ActivityCategory> activityCategories = [];

  static Future<void> fetchActivityCategories() async {
    activityCategories = await ApiService.fetchActivityCategories();
  }
}