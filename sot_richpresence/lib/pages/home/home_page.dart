import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/buttons/ship_button.dart';
import 'package:sot_richpresence/components/buttons/squared_button.dart';
import 'package:sot_richpresence/components/clippers/squared_button_clipper.dart';
import 'package:sot_richpresence/components/panels/name_panel.dart';

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
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShipButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: SvgPicture.asset(
                          'assets/icons/sloop.svg',
                          width: 300,
                          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                      ),
                      NamePanel(text: "The Voyager"),
                    ],
                  ),
                ),
                onPressed: () {
                  print("Ship button pressed");
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
