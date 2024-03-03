import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/colors/colors.dart';

class Separator extends StatelessWidget {
  final String icon;

  const Separator({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child: SvgPicture.asset('assets/separator/separator-left.svg', alignment: Alignment.centerRight)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset('assets/icons/$icon.svg', colorFilter: ColorFilter.mode(SotColors.darkYellow, BlendMode.srcIn),),
      ),
      Expanded(child: SvgPicture.asset('assets/separator/separator-right.svg', alignment: Alignment.centerLeft)),
    ]);
  }
}
