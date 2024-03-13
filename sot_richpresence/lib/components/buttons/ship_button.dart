import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/buttons/squared_button.dart';
import 'package:sot_richpresence/components/panels/name_panel.dart';
import 'package:sot_richpresence/models/ship/ship.dart';
import 'package:sot_richpresence/models/ship/ship_type.dart';

class ShipButton extends StatefulWidget {
  final Function onPressed;
  final Ship ship;

  const ShipButton({super.key, required this.onPressed, required this.ship});

  @override
  State<ShipButton> createState() => _ShipButtonState();
}

class _ShipButtonState extends State<ShipButton> {
  @override
  Widget build(BuildContext context) {
    return SquaredButton(
        onPressed: widget.onPressed,
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset('assets/png/the-voyager.png', fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                    child: SvgPicture.asset(
                      widget.ship.type.image,
                      width: 250,
                      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:8), child:NamePanel(text: tr("_${widget.ship.name}_name"))),
          ],
        ));
  }
}
