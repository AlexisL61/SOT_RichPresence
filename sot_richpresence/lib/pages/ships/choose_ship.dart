import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/buttons/ship_button.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/ship/ship.dart';

class ChooseShip extends StatefulWidget {
  const ChooseShip({super.key});

  @override
  State<ChooseShip> createState() => _ChooseShipState();
}

class _ChooseShipState extends State<ChooseShip> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: SotBackground(
            child: Center(
                child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(tr("_choose_your_ship"), style: TextStyle(fontSize: 24, color: Colors.white)),
        SizedBox(height: 20),
        Separator(icon: "sloop"),
        SizedBox(height: 40),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                Ship.ships.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ShipButton(
                          onPressed: () async {
                            int playersSelected = await Navigator.pushNamed(context, '/choose_ship_players', arguments: Ship.ships[index]) as int;
                            DrivenShip drivenShip = Ship.ships[index].toDrivenShip(playersSelected);
                            Navigator.pop(context, drivenShip);
                          },
                          ship: Ship.ships[index]),
                    ))),
      ],
    ))));
  }
}
