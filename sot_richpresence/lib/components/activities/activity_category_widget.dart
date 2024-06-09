import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sot_richpresence/components/activities/activity_widget.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/models/activities/activity_category.dart';
import 'package:sot_richpresence/services/responsive_service/responsive_service.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class ActivityCategoryWidget extends StatelessWidget {
  final ActivityCategory activityCategory;

  const ActivityCategoryWidget({super.key, required this.activityCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(activityCategory.icon, width: 50, height: 50),
            SizedBox(width: 20),
            Text(onlineTr(activityCategory.name),
                style: SotTextStyles.mediumWhite),
          ],
        ),
        SizedBox(height: 20),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ResponsiveService.getPadding(
                    MediaQuery.of(context).size.width)),
            child: SizedBox(
              child: AlignedGridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                controller: ScrollController(),
                  crossAxisCount: ResponsiveService.getColumns(
                      MediaQuery.of(context).size.width),
                  itemCount: activityCategory.activities.length,
                  itemBuilder: (context, index) =>
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ActivityWidget(
                          activity: activityCategory.activities[index]),
                    )
                  ),
            )),
      ],
    );
  }
}
