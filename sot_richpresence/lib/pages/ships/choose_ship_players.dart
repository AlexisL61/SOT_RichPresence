import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/buttons/small_button.dart';
import 'package:sot_richpresence/components/navigation/naviagtion_view.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/models/ship/ship.dart';

class ChooseShipPlayerRoute extends StatelessWidget {
  const ChooseShipPlayerRoute({super.key});

  @override
  Widget build(BuildContext context) {
    Ship selectedShip = ModalRoute.of(context)!.settings.arguments as Ship;
    return ChooseShipPlayersPage(selectedShip: selectedShip);
  }
}

class ChooseShipPlayersPage extends StatefulWidget {
  final Ship selectedShip;
  const ChooseShipPlayersPage({super.key, required this.selectedShip});

  @override
  State<ChooseShipPlayersPage> createState() => _ChooseShipPlayersPageState();
}

class _ChooseShipPlayersPageState extends State<ChooseShipPlayersPage> {
  @override
  Widget build(BuildContext context) {
    return SotNavigationView(
        showBackButton: true,
        content: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tr("_choose_player_number"), style: SotTextStyles.mediumWhite),
            SizedBox(height: 20),
            Separator(icon: "sloop"),
            SizedBox(height: 40),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPlayersChoice()),
          ],
        )));
  }

  List<Widget> _buildPlayersChoice() {
    List<Widget> players = [];
    for (int i = 1; i <= widget.selectedShip.maxPlayers; i++) {
      players.add(Padding(
          padding: const EdgeInsets.all(8.0),
          child: SmallButton(
              onPressed: () {
                Navigator.pop(context, i);
              },
              text: plural("_number_of_players", i))));
    }
    return players;
  }
}
