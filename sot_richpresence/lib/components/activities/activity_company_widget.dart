import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/models/activities/activity_company.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class CompanyWidget extends StatelessWidget {
  final ActivityCompany company;

  const CompanyWidget({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: SvgPicture.network(company.backgroundImage, fit: BoxFit.contain)),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 30),
            Expanded(child: Center(child: Image.network(company.image, fit: BoxFit.contain))),
            Expanded(
              flex: 2,
              child:
                  Center(child: Text(onlineTr(company.name), style: SotTextStyles.mediumWhite)),
            ),
            SizedBox(width: 30)
          ],
        ),
      ],
    );
  }
}
