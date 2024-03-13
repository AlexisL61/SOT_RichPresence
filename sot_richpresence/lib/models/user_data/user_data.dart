import 'package:sot_richpresence/models/activities/activity.dart';
import 'package:sot_richpresence/models/ship/driven_ship.dart';

class UserData {
  DrivenShip? drivenShip;
  Activity? activity;
  
  static final UserData _userData = UserData._internal();

  factory UserData() {
    return _userData;
  }

  UserData._internal();
}
