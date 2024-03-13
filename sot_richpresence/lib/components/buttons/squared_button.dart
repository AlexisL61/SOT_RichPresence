import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/clippers/squared_button_background_clipper.dart';
import 'package:sot_richpresence/components/clippers/squared_button_clipper.dart';
import 'package:sot_richpresence/components/colors/colors.dart';

class SquaredButton extends StatefulWidget {
  final Widget child;
  final Function onPressed;

  const SquaredButton({super.key, required this.child, required this.onPressed});

  @override
  State<SquaredButton> createState() => _SquaredButtonState();
}

class _SquaredButtonState extends State<SquaredButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onPressed();
      },
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
              child: ClipPath(
            clipper: SquaredButtonBackgroundClipper(),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              decoration: BoxDecoration(
                  color: isHovering ? SotColors.lightGreen.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                        color: isHovering ? SotColors.lightGreen.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 0))
                  ]),
            ),
          )),
          ClipPath(clipper: SquaredButtonClipper(), child: widget.child),
          Positioned.fill(
              child: ClipPath(
                  clipper: SquaredButtonClipper(),
                  child: SvgPicture.asset(
                    'assets/svg/panels/squared-button-decoration.svg',
                    fit: BoxFit.fill,
                  ))),
        ]),
      ),
    );
  }
}
