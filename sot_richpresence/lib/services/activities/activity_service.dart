import 'package:sot_richpresence/models/activities/activity_company.dart';
import 'package:sot_richpresence/services/api/api_service.dart';

class ActivityService {
  static List<ActivityCompany> activityCategories = [];

  static Future<void> fetchActivityCategories() async {
    activityCategories = await ApiService.fetchActivityCategories();
  }
}
