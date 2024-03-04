import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:sot_richpresence/components/colors/colors.dart';
import 'package:sot_richpresence/models/activities/activity_company.dart';

class CompanyWidget extends StatelessWidget {
  final ActivityCompany company;

  const CompanyWidget({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2,
        child: Stack(
          children: [
            Image.network(company.backgroundImage, fit: BoxFit.cover),
            Positioned.fill(
              child: Row(
                children: [
                  Expanded(child: Image.network(company.image, fit: BoxFit.contain)),
                  Expanded(
                    flex:2,
                    child: Center(
                      child: Text(company.name, style: TextStyle(fontSize: 24, color: SotColors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
