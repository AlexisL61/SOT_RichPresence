import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/user_data/user_data.dart';

class HomePageController {
  void setDrivenShip(DrivenShip drivenShip) {
    UserData().drivenShip = drivenShip;
  }
  
}