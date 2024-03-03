import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/panels/large_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: LargePanel(
                  image: AssetImage("assets/png/choose-ship.jpg"),
                  child: SizedBox(height: 200, width: 400),
                  title: "Navire",
                  description: "Aucun bateau sélectionné",
                  actionText: "Sélectionner un bateau",
                  action: () {
                    Navigator.pushNamed(context, "/choose_ship");
                  }),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: LargePanel(
                  image: AssetImage("assets/png/choose-activity.jpg"),
                  child: SizedBox(height: 200, width: 400),
                  title: "Activité",
                  description: "Aucune activité sélectionnée",
                  actionText: "Sélectionner une activité",
                  action: () {
                    print("Activity button pressed");
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
