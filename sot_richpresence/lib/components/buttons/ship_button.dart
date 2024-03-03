import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/buttons/squared_button.dart';

class ShipButton extends StatefulWidget {
  final Widget child;
  final Function onPressed;

  const ShipButton({super.key, required this.child, required this.onPressed});

  @override
  State<ShipButton> createState() => _ShipButtonState();
}

class _ShipButtonState extends State<ShipButton> {
  @override
  Widget build(BuildContext context) {
    return SquaredButton(child: Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
              'assets/png/the-voyager.png',
              fit: BoxFit.cover
            )
        ),
        widget.child
      ],
    ), onPressed: widget.onPressed);
  }
}
