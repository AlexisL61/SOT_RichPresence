import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sot_richpresence/components/background/background.dart';

class SotNavigationView extends StatefulWidget {
  final Widget content;
  final bool showBackButton;

  const SotNavigationView(
      {super.key, required this.content, this.showBackButton = false});

  @override
  State<SotNavigationView> createState() => _SotNavigationViewState();
}

class _SotNavigationViewState extends State<SotNavigationView> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: SotBackground(
            child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: widget.content,
        ),
        if (widget.showBackButton)
          Positioned(
              top: 16,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
                    child: SvgPicture.asset(isHovering? "assets/icons/close-hover.svg" : "assets/icons/close.svg")),
              ))
      ],
    )));
  }
}
