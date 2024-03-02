import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';

class SquaredButton extends StatefulWidget {
  final Widget child;
  
  const SquaredButton({super.key, required this.child});

  @override
  State<SquaredButton> createState() => _SquaredButtonState();
}

class _SquaredButtonState extends State<SquaredButton> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
        child: IntrinsicWidth(
      child: Stack(fit: StackFit.expand, children: [
        Padding(padding: EdgeInsets.all(6), child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.child,
          ],
        )),
        SvgPicture.asset('assets/svg/panels/small-panel-background.svg',
            allowDrawingOutsideViewBox: true, fit: BoxFit.fill, clipBehavior: Clip.hardEdge),
        SvgPicture.asset('assets/svg/panels/small-panel-foreground.svg',
            allowDrawingOutsideViewBox: true, fit: BoxFit.fill, clipBehavior: Clip.hardEdge),
        
      ]),
    ));
  }
}