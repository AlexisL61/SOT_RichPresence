import 'package:sot_richpresence/models/activities/activity.dart';
import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/user_data/user_data.dart';
import 'package:sot_richpresence/services/discord/rich_presence_service.dart';

class HomePageController {
  void setDrivenShip(DrivenShip drivenShip) {
    UserData().drivenShip = drivenShip;
    RichPresenceService.updateRpc();
  }

  void setActivity(Activity selectedActivity) {
    UserData().activity = selectedActivity;
    RichPresenceService.updateRpc();
  }
  
}