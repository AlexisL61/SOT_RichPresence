import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sot_richpresence/components/colors/colors.dart';
import 'package:sot_richpresence/components/texts/styles.dart';

class SmallPanel extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final String title;
  final String? description;

  const SmallPanel(
      {super.key,
      required this.image,
      required this.child,
      required this.title,
      this.description});

  @override
  State<SmallPanel> createState() => _SmallPanelState();
}

class _SmallPanelState extends State<SmallPanel> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: IntrinsicWidth(
      child: Stack(fit: StackFit.expand, children: [
        Padding(padding: EdgeInsets.all(6), child: Image(image: widget.image)),
        Padding(
            padding: EdgeInsets.all(6),
            child: Opacity(
                opacity: 0.5,
                child: Container(
                  color: SotColors.green,
                ))),
        SvgPicture.asset('assets/svg/panels/small-panel-background.svg',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
            clipBehavior: Clip.hardEdge),
        SvgPicture.asset('assets/svg/panels/small-panel-foreground.svg',
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
            clipBehavior: Clip.hardEdge),
        Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: SotTextStyles.smallYellow,
                  textAlign: TextAlign.left,
                ),
                if (widget.description != null)
                  Text(
                    widget.description!,
                    style: SotTextStyles.mediumWhite,
                    textAlign: TextAlign.center,
                  ),
                widget.child,
              ],
            ))
      ]),
    ));
  }
}
