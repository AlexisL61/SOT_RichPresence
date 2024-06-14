import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sot_richpresence/components/colors/colors.dart';

class SotIconButton extends StatefulWidget {
  final void Function() onPressed;
  final IconData icon;

  const SotIconButton({super.key, required this.onPressed, required this.icon});

  @override
  State<SotIconButton> createState() => _SotIconButtonState();
}

class _SotIconButtonState extends State<SotIconButton> {
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
                      ? 'assets/svg/buttons/icon-button-hover.svg'
                      : 'assets/svg/buttons/icon-button.svg',
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                  clipBehavior: Clip.hardEdge)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              widget.icon,
              color: SotColors.white,
              size: 20,
            ),
          ),
        ]),
      ),
    );
  }
}
