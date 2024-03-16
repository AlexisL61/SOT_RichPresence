import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/panels/large_panel.dart';
import 'package:sot_richpresence/models/activities/activity.dart';
import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/user_data/user_data.dart';
import 'package:sot_richpresence/pages/home/home_page_controller.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController controller = HomePageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: SotBackground(
          child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: _buildShipPanel(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: _buildActivityPanel(),
            ),
          ],
        ),
      )),
    );
  }

  Widget _buildShipPanel() {
    DrivenShip? drivenShip = UserData().drivenShip;
    return LargePanel(
        image: AssetImage("assets/png/choose-ship.jpg"),
        child: SizedBox(height: 200, width: 400),
        title: tr("_ship"),
        description: drivenShip == null
            ? tr("_no_ship_selected")
            : tr("_${drivenShip.name}_name") + " - " + drivenShip.players.toString() + " joueurs",
        actionText: tr("_ship_select_button"),
        action: () async {
          DrivenShip? drivenShip = await Navigator.pushNamed(context, "/choose_ship") as DrivenShip?;
          if (drivenShip != null) {
            controller.setDrivenShip(drivenShip);
            setState(() {});
          }
        });
  }

  Widget _buildActivityPanel() {
    Activity? selectedActivity = UserData().activity;
    return LargePanel(
        image: AssetImage("assets/png/choose-activity.jpg"),
        child: SizedBox(height: 200, width: 400),
        title: tr("_activity"),
        description: selectedActivity == null ? tr("_no_activity_selected") : onlineTr(selectedActivity.name),
        actionText: tr("_activity_select_button"),
        action: () async {
          Activity? selectedActivity = await Navigator.pushNamed(context, "/choose_activity_company") as Activity?;
          if (selectedActivity != null) {
            controller.setActivity(selectedActivity);
            setState(() {});
          }
        });
  }
}
