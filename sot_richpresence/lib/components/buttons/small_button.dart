import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sot_richpresence/components/colors/colors.dart';

class SmallButton extends StatefulWidget {
  final void Function() onPressed;
  final String text;

  const SmallButton({super.key, required this.onPressed, required this.text});

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (event) {
          isHovering = true;
          setState(() {});
        },
        onExit: (event) {
          isHovering = false;
          setState(() {});
        },
        child: Stack(children: [
          Positioned.fill(
              child: SvgPicture.asset(
              isHovering
                  ? 'assets/svg/buttons/green-button-sprite-hover.svg'
                  : 'assets/svg/buttons/green-button-sprite-off.svg',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
              clipBehavior: Clip.hardEdge)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}
