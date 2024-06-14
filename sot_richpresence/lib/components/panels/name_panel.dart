import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/clippers/panel_name_clipper.dart';
import 'package:sot_richpresence/components/texts/styles.dart';

class NamePanel extends StatefulWidget {
  final String text;
  const NamePanel({super.key, required this.text});

  @override
  State<NamePanel> createState() => _NamePanelState();
}

class _NamePanelState extends State<NamePanel> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
          child: SvgPicture.asset('assets/svg/panels/panel-name-shadow.svg', fit: BoxFit.fill)),
      Positioned.fill(
        right:2,
        bottom: 2,
        child: ClipPath(
          clipper: PanelNameClipper(),
          child: SvgPicture.asset('assets/svg/panels/panel-name-bg.svg', fit: BoxFit.fill),
        ),
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal:15, vertical: 20),
          child: Text(
            widget.text,
            style: SotTextStyles.smallWhite,
            textAlign: TextAlign.center,
          )),
    ]);
  }
}
