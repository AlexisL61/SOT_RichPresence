import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sot_richpresence/components/buttons/small_button.dart';
import 'package:sot_richpresence/components/colors/colors.dart';
import 'package:sot_richpresence/components/texts/styles.dart';

class LargePanel extends StatefulWidget {
  final ImageProvider image;
  final Widget child;
  final String title;
  final String? description;
  final String? actionText;
  final void Function()? action;

  const LargePanel(
      {super.key,
      required this.image,
      required this.child,
      required this.title,
      this.description,
      this.actionText,
      this.action});

  @override
  State<LargePanel> createState() => _LargePanelState();
}

class _LargePanelState extends State<LargePanel> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
          child: Padding(
              padding: EdgeInsets.all(6),
              child: Image(image: widget.image, fit: BoxFit.cover))),
      Positioned.fill(
          child: Padding(
              padding: EdgeInsets.all(6),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  SotColors.green.withOpacity(0.8),
                  SotColors.green.withOpacity(0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ))),
      Positioned.fill(
          child: SvgPicture.asset(
              'assets/svg/panels/large-panel-background.svg',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
              clipBehavior: Clip.hardEdge)),
      Positioned.fill(
          child: SvgPicture.asset(
              'assets/svg/panels/large-panel-foreground.svg',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
              clipBehavior: Clip.hardEdge)),
      Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              if (widget.actionText != null && widget.action != null)
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SmallButton(
                    onPressed: widget.action!,
                    text: widget.actionText!,
                  ),
                )
            ],
          ))
    ]);
  }
}
