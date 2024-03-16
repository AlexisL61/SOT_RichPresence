import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sot_richpresence/components/activities/activity_widget.dart';
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
            Text(onlineTr(activityCategory.name), style: TextStyle(fontSize: 24, color: Colors.white)),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ResponsiveService.getPadding(MediaQuery.of(context).size.width)),
          child: StaggeredGrid.count(
              crossAxisCount: ResponsiveService.getColumns(MediaQuery.of(context).size.width),
              children: List.generate(activityCategory.activities.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ActivityWidget(activity: activityCategory.activities[index]),
                );
              })),
        ),
      ],
    );
  }
}
