import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/buttons/icon_button.dart';
import 'package:sot_richpresence/components/dialogs/credit_dialog.dart';
import 'package:sot_richpresence/components/navigation/naviagtion_view.dart';
import 'package:sot_richpresence/components/panels/large_panel.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
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
    return SotNavigationView(
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: _buildUpperPanel(),
          ),
          Expanded(
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
          ),
          _buildBottomPanel()
        ],
      ),
    );
  }

  Widget _buildUpperPanel() {
    return Column(children: [
      Text(tr("_app_title"), style: SotTextStyles.mediumWhite),
      SizedBox(height: 20),
      Separator(icon: "sloop"),
      SizedBox(height: 40),
    ]);
  }

  Widget _buildBottomPanel() {
    return SotIconButton(
        onPressed: () {
          showDialog(context: context, builder: (context) => CreditDialog(), barrierDismissible: true);
        },
        icon: FluentIcons.heart);
  }

  Widget _buildShipPanel() {
    DrivenShip? drivenShip = UserData().drivenShip;
    return SizedBox(
      height:400,
      child: LargePanel(
          image: AssetImage("assets/png/choose-ship.jpg"),
          child: Expanded(child:SizedBox(width: 400)),
          title: tr("_ship"),
          description: drivenShip == null
              ? tr("_no_ship_selected")
              : tr("_${drivenShip.name}_name") +
                  " - " +
                  drivenShip.players.toString() +
                  " joueurs",
          actionText: tr("_ship_select_button"),
          action: () async {
            DrivenShip? drivenShip =
                await Navigator.pushNamed(context, "/choose_ship") as DrivenShip?;
            if (drivenShip != null) {
              controller.setDrivenShip(drivenShip);
              setState(() {});
            }
          }),
    );
  }

  Widget _buildActivityPanel() {
    Activity? selectedActivity = UserData().activity;
    return SizedBox(
      height:400,
      child: LargePanel(
        image: AssetImage("assets/png/choose-activity.jpg"),
        child: Expanded(child:SizedBox(width: 400)),
        title: tr("_activity"),
        description: selectedActivity == null
            ? tr("_no_activity_selected")
            : onlineTr(selectedActivity.name),
        actionText: tr("_activity_select_button"),
        action: () async {
          Activity? selectedActivity =
              await Navigator.pushNamed(context, "/choose_activity_company")
                  as Activity?;
          if (selectedActivity != null) {
            controller.setActivity(selectedActivity);
            setState(() {});
          }
        }));
  }
}
