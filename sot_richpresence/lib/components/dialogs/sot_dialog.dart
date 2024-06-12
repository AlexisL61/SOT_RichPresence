import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';

class SOTDialog extends StatefulWidget {
  final Widget child;

  const SOTDialog({super.key, required this.child});

  @override
  State<SOTDialog> createState() => _SOTDialogState();
}

class _SOTDialogState extends State<SOTDialog> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(children: [
            Positioned.fill(
                child: SvgPicture.asset(
                    'assets/svg/background/pop-up-background.svg',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                    clipBehavior: Clip.hardEdge)),
            Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [widget.child],
                ))
          ])
        ]);
  }
}
